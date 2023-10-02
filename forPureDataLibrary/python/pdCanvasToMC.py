#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 11 15:53:35 2023
@author: alainbonardi - CICM - 2023
This Python program scans all canvas pd files within a selected directory and transforms them
to multichannel abstractions using snake~ out and snake~ in objects
It creates two kinds of abstractions: 
- simple multichannel abstractions without ui (with suffix _m)
- multichannel abstractions with ui (with suffix _m_ui)
"""
import os
import shutil
from tkinter.filedialog import askdirectory

#declaration of constants
Xobj = "#X obj"
Xmsg = "#X msg"
Xconnect = "#X connect"

#declaration of global variables
#the list of object indices
objectList = []
#the list of message indices
msgList = []
#the list of connection indices
connectionList = []
#the list on inlet~ indices
inletTildeList = []
#the list of outlet~ indices
outletTildeList = []
#index of the snake~ out object
snakeOutIndex = 0
#index of the snake~ in object
snakeInIndex = 0
#y-coordinate of r $0-in object for snake~ out object
ySnakeOut = 0
#y-coordinate of s $0-out object for snake~ in object
ySnakeIn = 0
#index of the compiled object from Faust code
faustObjectIndex = 0
#name of the compiled object from Faust code
faustObjectName = 'abc'


#initialization of global variables
def init():
    global objectList, msgList, connectionList
    global inletTildeList, outletTildeList, snakeOutIndex, snakeInIndex
    global ySnakeOut, ySnakeIn
    global faustObjectIndex, faustObjectName
    objectList = []
    msgList = []
    connectionList = []
    inletTildeList = []
    outletTildeList = []
    snakeOutIndex = 0
    snakeInIndex = 0
    ySnakeOut = 0
    ySnakeIn = 0
    faustObjectIndex = 0

#tests if the current line describes an object
def isObj(myLine):
    if (myLine[0:6] == "#X obj"):
        return True
    else:
        return False
    
#tests if the current line describes a message
def isMsg(myLine):
    if (myLine[0:6] == "#X msg"):
        return True
    else:
        return False

#tests if the current line describes a connection    
def isConnection(myLine):
    if (myLine[0:10] == "#X connect"):
        return True
    else:
        return False

#tests if the current line describes an inlet~
def isInletTilde(myLine):
    if ("inlet~" in myLine):
        return True
    else:
        return False

#tests if the current line describes an outlet~
def isOutletTilde(myLine):
    if ("outlet~" in myLine):
        return True
    else:
        return False

#tests if the current line describes a snake~ out    
def isSnakeOut(myLine):
    if ("snake~ out" in myLine):
        return True
    else:
        return False

#tests if the current line describes a snake~ in
def isSnakeIn(myLine):
    if ("snake~ in" in myLine):
        return True
    else:
        return False


def getsYSnakeOut(myLine):
    global ySnakeOut
    if ("r \$0-in;" in myLine):
        #print(myLine)
        ySnakeOut = getsYPosObject(myLine)
        #print(str(ySnakeOut))
        
def getsYSnakeIn(myLine):
    global ySnakeIn
    if ("s \$0-out;" in myLine):
        #print(myLine)
        ySnakeIn = getsYPosObject(myLine)
        #print(str(ySnakeIn))
        
        
#tests if the current line describes the object compiled from the Faust code
def isFaustObject(myLine, faustObjectName):
    if (faustObjectName in myLine):
        return True
    else:
        return False
    
#adds the snake~ out object to the code   
def addSnakeOut(outputNumber, myCode, lineNumber):
    global ySnakeOut
    newSnakeOutLine = Xobj+" "+str(70)+" "+str(ySnakeOut)+" snake~ out "+str(outputNumber)+";\n"
    myCode.insert(lineNumber, newSnakeOutLine)

#adds the snake~ in object to the code
def addSnakeIn(inputNumber, myCode, lineNumber):
    global ySnakeIn
    newSnakeInLine = Xobj+" "+str(70)+" "+str(ySnakeIn)+" snake~ in "+str(inputNumber)+";\n"
    myCode.insert(lineNumber, newSnakeInLine)

#adds a new connection to the code    
def addConnection(obj1, p1, obj2, p2, myCode, lineNumber):
    newConnectionLine = Xconnect+" "+str(obj1)+" "+str(p1)+" "+str(obj2)+" "+str(p2)+";\n"
    myCode.insert(lineNumber, newConnectionLine)

#finds the number of the last line describing a connection
def lastConnectLineNumber(myCode):
    i = 0
    lineNumber = 0
    for line in myCode:
        if isConnection(line):
            lineNumber = i
        i = i+1
    return lineNumber

#gets the various data of a connection, analyzing the line 
def getConnectionData(line, dataIndex):
    if isConnection(line):
        dataSet = line[10:]
        dataInfo = dataSet.split()
        return(dataInfo[dataIndex])

def getsYPosObject(line):
    if (isObj(line) or isMsg(line)):
        dataSet = line[6:]
        dataInfo = dataSet.split()
        return(dataInfo[1])
    
#deletes the connections starting from a given object
def deleteConnectionsFromObject(myCode, objectIndex):
    i = 0
    for line in myCode:
        if (getConnectionData(line, 0)==str(objectIndex)):
            #print("ligne to delete=>"+str(i)+" "+line)
            del myCode[i]
        i = i+1
        
#deletes the connections going to a given object        
def deleteConnectionsToObject(myCode, objectIndex):
    i = 0
    for line in myCode:
        if (getConnectionData(line, 2)==str(objectIndex)):
            #print("ligne to delete=>"+str(i)+" "+line)
            del myCode[i]
        i = i+1
        
def updateConnectionData(line, threshold):
    obj1 = int(getConnectionData(line, 0))
    p1 = getConnectionData(line, 1)
    obj2 = int(getConnectionData(line, 2))
    p2 = getConnectionData(line, 3) #includes the final ;
    if (obj1 > threshold):
        obj1 = obj1 - 1
    if (obj2 > threshold):
        obj2 = obj2 - 1
    newConnectionLine = Xconnect+" "+str(obj1)+" "+p1+" "+str(obj2)+" "+p2+"\n"
    return newConnectionLine

def updateAllConnectionData(threshold, myCode):
    i = 0
    for line in myCode:
        if isConnection(line):
            newConnectionLine = updateConnectionData(line, threshold)
            myCode[i] = newConnectionLine
        i = i+1

#returns the line number of the ith inlet~
def lookForThisInlet(myCode, i):
    #final position returned
    pos = -1
    #line number in the code
    ind = 0
    #inletIndex
    inletIndex = 0
    for line in myCode:
        if isInletTilde(line):
            if (inletIndex == i):
                pos = ind
            inletIndex = inletIndex + 1
        ind = ind+1
    return pos

#returns the line number of the ith outlet~
def lookForThisOutlet(myCode, i):
    #final position returned
    pos = -1
    #line number in the code
    ind = 0
    #outletIndex
    outletIndex = 0
    for line in myCode:
        if isOutletTilde(line):
            if (outletIndex == i):
                pos = ind
            outletIndex = outletIndex + 1
        ind = ind+1
    return pos


def parsePdCode(myCode):
    global objectList, msgList, connectionList
    global inletTildeList, outletTildeList, snakeOutIndex, snakeInIndex
    global ySnakeOut, ySnakeIn
    global faustObjectIndex, faustObjectName
    init()

    i = 0
    objectIndex = 0
    connectionIndex = 0
    
    for line in myCode:
        # print(str(i)+" "+line)

        if isInletTilde(line):
            inletTildeList.append(objectIndex)
            
        if isOutletTilde(line):
            outletTildeList.append(objectIndex)
            
        if isSnakeOut(line):
            snakeOutIndex = objectIndex
                
        if isSnakeIn(line):
            snakeInIndex = objectIndex
            
        if isFaustObject(line, faustObjectName):
            faustObjectIndex = objectIndex
            
        if isObj(line):
            objectList.append(objectIndex)
            objectIndex = objectIndex + 1
            
        if isMsg(line):
            msgList.append(objectIndex)
            objectIndex = objectIndex + 1

        if isConnection(line):
            connectionList.append(connectionIndex)
            connectionIndex = connectionIndex + 1
            
        getsYSnakeIn(line)
        getsYSnakeOut(line)
            
        i = i+1



def dump(myCode):
    global objectList, msgList, connectionList
    global inletTildeList, outletTildeList, snakeOutIndex, snakeInIndex
    global ySnakeOut, ySnakeIn
    global faustObjectIndex, faustObjectName
    print("____________________________________________________________")
    print("\n")
    print("Number of lines in the code = "+str(len(myCode)))
    print(str(len(objectList))+" objects")
    print(str(len(msgList))+" msgs")
    print(str(len(connectionList))+ " connections")
    print(str(len(inletTildeList))+ " inlet~")
    print(str(len(outletTildeList))+ " outlet~")
    print("snakeOutIndex = " + str(snakeOutIndex))
    print("snakeInIndex = " + str(snakeInIndex))
    print("ySnakeOut = "+str(ySnakeOut))
    print("ySnakeIn = "+str(ySnakeIn))
    print("faustObjectIndex = " + str(faustObjectIndex))
    print("faustObjectName = "+faustObjectName)
    print("\n")
    print("____________________________________________________________")

    
def displayPdCode(myCode):
    i = 0
    for line in myCode:
        print(str(i)+" "+line)
        i = i+1


def savePdCode(myCode, myFileName):
    with open(myFileName, 'w') as f:
        for line in myCode:
            f.write(line)


def pdCodeProcess(fileName, patchFolder, objectName):
    global faustObjectIndex, faustObjectName
    f = open(fileName, 'r')
    pdCodeUI = f.readlines()
    faustObjectName = objectName
    #
    pathUI = os.path.join(patchFolder,"UI")
    pathMC = os.path.join(patchFolder,"MC")
    #
    # parses the original code
    parsePdCode(pdCodeUI)
    #keeps the original number of inlet~~
    inletTildeNumber = len(inletTildeList)
    #print("inlet="+str(inletTildeNumber))
    #keeps the original number of outlet~
    outletTildeNumber = len(outletTildeList)
    snakeOutLine = lastConnectLineNumber(pdCodeUI)+1;
    if inletTildeNumber > 0:
        #adds the snake~ out object to the patch
        addSnakeOut(len(inletTildeList), pdCodeUI, snakeOutLine)

    #adds the snake~ in object to the patch
    if inletTildeNumber > 0:
        snakeInLine = snakeOutLine + 1
    else:
        snakeInLine = snakeOutLine 
    addSnakeIn(len(outletTildeList), pdCodeUI, snakeInLine)
    #re-parses the new code
    parsePdCode(pdCodeUI)

    
    #we check if there are inlet~ in the patch
    if inletTildeNumber > 0:
        #deletes the connections from the inlets~ to other objects
        for indInlet in inletTildeList:
            deleteConnectionsFromObject(pdCodeUI, indInlet)
    #deletes the connections to the outlets (coming from other objects)
    for indOutlet in outletTildeList:
        deleteConnectionsToObject(pdCodeUI, indOutlet)
    parsePdCode(pdCodeUI)
    #adds the new connections between snake out and the pins of the faust object
    inletConnectionLine = lastConnectLineNumber(pdCodeUI)+3
    #inletConnectionLine = snakeInLine + 1
    if inletTildeNumber > 0:
        for ind in range(len(inletTildeList)):
            addConnection(snakeOutIndex, ind, faustObjectIndex, ind+1, pdCodeUI, inletConnectionLine + ind)
    outletConnectionLine = inletConnectionLine + len(inletTildeList)
    #print(outletConnectionLine)

    for ind in range(len(outletTildeList)):
        addConnection(faustObjectIndex, ind+1, snakeInIndex, ind, pdCodeUI, outletConnectionLine+ind)
    if inletTildeNumber > 0:
        addConnection(inletTildeList[0], 0, snakeOutIndex, 0, pdCodeUI, outletConnectionLine+len(outletTildeList))
  
    addConnection(snakeInIndex, 0, outletTildeList[0], 0, pdCodeUI, outletConnectionLine+len(outletTildeList)+1)
    
        #
        #we delete all inlet~ objects (except the first one) and update the descrption of the connections in consequence
        #displayPdCode(pdCode)
    if inletTildeNumber > 0:
        for i in range(1, len(inletTildeList)):
            #we skip the first inlet~ that is not deleted
            #at each call, we delete the 2nd inlet~ to be found until there are no more inlet~ except the first one
            lineNumber = lookForThisInlet(pdCodeUI, 1)
            #print("line #="+str(lineNumber)+ " i="+str(i))
            if (lineNumber > -1):
                del pdCodeUI[lineNumber]
                updateAllConnectionData(inletTildeList[1], pdCodeUI)
                parsePdCode(pdCodeUI)
            #all connections are updated 
    
    for i in range(1, len(outletTildeList)):
        #we skip the first outlet~ that is not deleted
        #at each call, we delete the 2nd inlet~ to be found until there are no more inlet~ except the first one
        lineNumber = lookForThisOutlet(pdCodeUI, 1)
        #print("line #="+str(lineNumber)+ " i="+str(i))
        if (lineNumber > -1):
            del pdCodeUI[lineNumber]
            updateAllConnectionData(outletTildeList[1], pdCodeUI)
            parsePdCode(pdCodeUI)
           #all connections are updated 

    if ((inletTildeNumber > 0) or (outletTildeNumber > 0)):
        #dump(pdCode)
        uiCanvasFileName = faustObjectName+"_m_ui.pd"
        uiCanvasPath = os.path.join(pathUI, uiCanvasFileName)
        savePdCode(pdCodeUI, uiCanvasPath)
    
        #creation of the multichannel patch without user interface
        #creating a new list of lines
        pdCodeMC = []
        mcFileName = faustObjectName+"_m.pd"
        mcFilePath = os.path.join(pathMC, mcFileName)
        #mcFile = open(mcFileName, "a")
        #the content of the patch does not vary except the number of channels
        #of the snake~ in and snake~ out objects
        #patch window
        pdCodeMC.append("#N canvas 0 0 400 350 12;\n")
        #object 0 is the patch inlet
        inletId = 0
        pdCodeMC.append("#X obj 30 30 inlet;\n")
        if inletTildeNumber > 0:
            #object 1 is the patch inlet~
            inletTildeId = 1
            pdCodeMC.append("#X obj 100 30 inlet~;\n")
            #object 2 is the snake~ out with variable number of outlets
            snakeOutId = 2
            pdCodeMC.append("#X obj 100 80 snake~ out "+str(inletTildeNumber)+";\n")
       
        pdCodeMC.append("#X obj 30 130 "+faustObjectName+"~;\n")
        pdCodeMC.append("#X obj 30 230 outlet;\n")
        pdCodeMC.append("#X obj 100 180 snake~ in "+str(outletTildeNumber)+";\n")
        pdCodeMC.append("#X obj 100 230 outlet~;\n")
        pdCodeMC.append("#X text 30 280 generated by pdCanvasToMC.py / abclib - CICM;\n")
        
        if inletTildeNumber > 0:
            #object 3 is the compiled Faust object
            faustObjectId = 3
            #object 4 is the patch outlet
            outletId = 4
            #object 5 is the snake~ int with variable number of inlets
            snakeInId = 5
            #object 6 is the patch outlet~
            outletTildeId = 6
            #object 7 is the comment at the bottom of the patch
            commentId = 7
        else:
            #object 1 is the compiled Faust object
            faustObjectId = 1
            #object 2 is the patch outlet
            outletId = 2
            #object 3 is the snake~ int with variable number of inlets
            snakeInId = 3
            #object 4 is the patch outlet~
            outletTildeId = 4
            #object 5 is the comment at the bottom of the patch
            commentId = 5
        
        
        #connects the patch inlet to the first inlet of the compiled Faust object
        pdCodeMC.append("#X connect 0 0 "+str(faustObjectId)+" 0;\n")
        if inletTildeNumber > 0:
            #connects the patch inlet~ to the first inlet of snake~ out
            pdCodeMC.append("#X connect 1 0 2 0;\n")
            #loop to connect all outlets of snake~ out to all signal inlets of the compiled object
            for i in range(1, inletTildeNumber+1):
                pdCodeMC.append("#X connect 2 "+str(i-1)+" 3 "+str(i)+";\n")
        #connects the control outlet of the compiled object to the patch outlet
        pdCodeMC.append("#X connect "+str(faustObjectId)+" 0 "+str(outletId)+" 0;\n")
        #loop to connect all signal outlets of the compiled object to the inlets of snake~ in
        for i in range(1, outletTildeNumber+1):
            pdCodeMC.append("#X connect "+str(faustObjectId)+" "+str(i)+" "+str(snakeInId)+" "+str(i-1)+";\n")
        #connects the outlet of snake~ in to the patch outlet~
        pdCodeMC.append("#X connect "+str(snakeInId)+" 0 "+str(outletTildeId)+" 0;\n")
        #
        savePdCode(pdCodeMC, mcFilePath)
        print("==>canvas processed")
    else:
        print("==>canvas not processed. No inlet~ and no outlet~ inside")



#directory = '/Users/alainbonardi/Dropbox/faustFactory/abclib_factory/abclib_labo_brainstorming/manipulationPureDataEnPython/patchs'
directory = askdirectory()
print("____________________________________________________________")
print("____________________________________________________________")
print("pdCanvasToMC Python program - CICM  - 2023")
print("Creating multichannel & multichannel+UI abstractions")
print("from canvas got in Faust online compilation")
print("All canvas in this directory: "+directory)
print("will be processed")
print("____________________________________________________________")
print("____________________________________________________________")

pathUI = os.path.join(directory,"UI")
if os.path.exists(pathUI):
    print("Existing UI directory_the previous one is deleted")
    shutil.rmtree(pathUI)
os.mkdir(pathUI)

pathMC = os.path.join(directory, "MC")
if os.path.exists(pathMC):
    print("Existing MC directory_the previous one is deleted")
    shutil.rmtree(pathMC)
os.mkdir(pathMC)

for fileName in os.listdir(directory):
    f = os.path.join(directory, fileName)
    if (os.path.isfile(f)) and (fileName != ".DS_Store"):
        #print("filename="+fileName)
        fullFileName = os.path.join(directory, fileName)
        myPatchSplit = fileName.partition('.')
        myProcessName = myPatchSplit[0]
        print("____________________________________________________________")
        if fullFileName.endswith('.pd_darwin'):
            print(fileName+" is not a .pd PureData file -- not processed")

        if fullFileName.endswith('.pd'):
            print("Creating "+myProcessName+"_m_ui.pd and "+myProcessName+"_m.pd")     
            pdCodeProcess(fullFileName, directory, myProcessName)
                 
            