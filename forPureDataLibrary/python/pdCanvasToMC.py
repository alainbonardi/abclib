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
import pdPatchLib as pdLib


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
    snakeOutIndex = -1
    #snakeInIndex = 0
    ySnakeOut = 0
    ySnakeIn = 0
    faustObjectIndex = 0


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

        if pdLib.isInletTilde(line):
            inletTildeList.append(objectIndex)
            
        if pdLib.isOutletTilde(line):
            outletTildeList.append(objectIndex)
            
        if pdLib.isSnakeOut(line):
            snakeOutIndex = objectIndex
            
                
        if pdLib.isSnakeIn(line):
            snakeInIndex = objectIndex
            
            
        if pdLib.isFaustObject(line, faustObjectName):
            faustObjectIndex = objectIndex
            
        if pdLib.isObj(line):
            objectList.append(objectIndex)
            objectIndex = objectIndex + 1
            
        if pdLib.isMsg(line):
            msgList.append(objectIndex)
            objectIndex = objectIndex + 1
            
        if pdLib.isText(line):
            objectIndex = objectIndex + 1

        if pdLib.isConnection(line):
            connectionList.append(connectionIndex)
            connectionIndex = connectionIndex + 1
        
        y1 = pdLib.getsYSnakeIn(line)
        y2 = pdLib.getsYSnakeOut(line)
        if (y1 > -1):
            ySnakeIn = y1
        if (y2 > -1):
            ySnakeOut = y2
        
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

    



def generalProcess(fileName, patchFolder, objectName):
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
    #if we have 0 or 1 inlet~ and 0 or 1 outlet~
    if (inletTildeNumber > 1) or (outletTildeNumber > 1):
        #snakeOutLine = pdLib.lastConnectLineNumber(pdCodeUI)+1;
        #addSnakeOutTest = (inletTildeNumber > 0) 
        #and not("multiencoder" in objectName)
        #print(addSnakeOutTest)
        snakeOutLine = len(pdCodeUI)+1
        snakeInLine = snakeOutLine
        #
        if (inletTildeNumber > 1):
            #adds the snake~ out object to the patch
            #print("Adds the snakeOutLine")
            pdLib.addSnakeOut(len(inletTildeList), pdCodeUI, snakeOutLine, ySnakeOut)
            snakeInLine = snakeOutLine + 1
        if (outletTildeNumber > 1):
            #adds the snake~ in object to the patch      
            pdLib.addSnakeIn(len(outletTildeList), pdCodeUI, snakeInLine, ySnakeIn)
        #re-parses the new code
        parsePdCode(pdCodeUI)
        #pdLib.displayPdCode(pdCodeUI)
    
        #we check if there are inlet~ in the patch
        if (inletTildeNumber > 1):
            #print("Deletes the connection from the inlets to other objects")
            #deletes the connections from the inlets~ to other objects
            for indInlet in inletTildeList:
                pdLib.deleteAllConnectionsFromObject(pdCodeUI, indInlet)
        #deletes the connections to the outlets (coming from other objects)
        if (outletTildeNumber > 1):
            for indOutlet in outletTildeList:
                pdLib.deleteAllConnectionsToObject(pdCodeUI, indOutlet)
            parsePdCode(pdCodeUI)
    
        #adds the new connections between snake out and the pins of the faust object
        #inletConnectionLine = pdLib.lastConnectLineNumber(pdCodeUI)+3
        #inletConnectionLine = snakeInLine + 1
        inletConnectionLine = len(pdCodeUI)+1
        if (inletTildeNumber > 1):
            #print("Adds the new connections")
            for ind in range(len(inletTildeList)):
                pdLib.addConnection(snakeOutIndex, ind, faustObjectIndex, ind+1, pdCodeUI, inletConnectionLine + ind)
        outletConnectionLine = inletConnectionLine + len(inletTildeList)
        #print(outletConnectionLine)
        if (outletTildeNumber > 1):
            for ind in range(len(outletTildeList)):
                pdLib.addConnection(faustObjectIndex, ind+1, snakeInIndex, ind, pdCodeUI, outletConnectionLine+ind)
        
        if inletTildeNumber > 1:
            pdLib.addConnection(inletTildeList[0], 0, snakeOutIndex, 0, pdCodeUI, outletConnectionLine+len(outletTildeList))
  
        if outletTildeNumber > 1:
            pdLib.addConnection(snakeInIndex, 0, outletTildeList[0], 0, pdCodeUI, outletConnectionLine+len(outletTildeList)+1)
    
        #
        #we delete all inlet~ objects (except the first one) and update the description of the connections in consequence
        #displayPdCode(pdCode)
        if inletTildeNumber > 1:
            #print("Deletes inlet~ objects")
            for i in range(1, len(inletTildeList)):
                #we skip the first inlet~ that is not deleted
                #at each call, we delete the 2nd inlet~ to be found until there are no more inlet~ except the first one
                lineNumber = pdLib.lookForThisInlet(pdCodeUI, 1)
                #print("line #="+str(lineNumber)+ " i="+str(i))
                if (lineNumber > -1):
                    del pdCodeUI[lineNumber]
                    pdLib.updateAllConnectionData(inletTildeList[1], pdCodeUI)
                    parsePdCode(pdCodeUI)
                #all connections are updated 
        if outletTildeNumber > 1:
            for i in range(1, len(outletTildeList)):
                #we skip the first outlet~ that is not deleted
                #at each call, we delete the 2nd inlet~ to be found until there are no more inlet~ except the first one
                lineNumber = pdLib.lookForThisOutlet(pdCodeUI, 1)
                #print("line #="+str(lineNumber)+ " i="+str(i))
                if (lineNumber > -1):
                    del pdCodeUI[lineNumber]
                    pdLib.updateAllConnectionData(outletTildeList[1], pdCodeUI)
                    parsePdCode(pdCodeUI)
                #all connections are updated 
        
        pdLib.movesCanvasLineToTheEnd(pdCodeUI)
    
    #if ((inletTildeNumber > 0) or (outletTildeNumber > 0)):
        #dump(pdCode)
        uiCanvasFileName = faustObjectName+"_m_ui.pd"
        uiCanvasPath = os.path.join(pathUI, uiCanvasFileName)
        pdLib.savePdCode(pdCodeUI, uiCanvasPath)
    
        #creation of the multichannel patch without user interface
        #creating a new list of lines
        pdCodeMC = []
        mcFileName = faustObjectName+"_m.pd"
        mcFilePath = os.path.join(pathMC, mcFileName)
        #mcFile = open(mcFileName, "a")
        #the content of the patch does not vary except the number of channels
        #of the snake~ in and snake~ out objects
        #patch window
        #initializes object IDs
        inletTildeId = -1
        snakeOutId = -1
        outletTildeId = -1
        snakeInId = -1
        #
        pdCodeMC.append("#N canvas 0 0 400 350 10;\n")
        #object 0 is the patch inlet
        inletId = 0
        pdCodeMC.append("#X obj 30 30 inlet;\n")
        if (inletTildeNumber > 0):
            #object 1 is the patch inlet~
            inletTildeId = 1
            pdCodeMC.append("#X obj 100 30 inlet~;\n")
            #object 2 is the snake~ out with variable number of outlets
        if (inletTildeNumber > 1):
            snakeOutId = 2
            pdCodeMC.append("#X obj 100 80 snake~ out "+str(inletTildeNumber)+";\n")
       
        pdCodeMC.append("#X obj 30 130 "+faustObjectName+"~;\n")
        pdCodeMC.append("#X obj 30 230 outlet;\n")
        if (outletTildeNumber > 1):
            pdCodeMC.append("#X obj 100 180 snake~ in "+str(outletTildeNumber)+";\n")
        if (outletTildeNumber > 0):
            pdCodeMC.append("#X obj 100 230 outlet~;\n")
        pdCodeMC.append("#X text 30 280 generated by pdCanvasToMC.py / abclib - CICM;\n")
        
        if (inletTildeNumber > 1):
            #object 3 is the compiled Faust object
            faustObjectId = 3
            #object 4 is the patch outlet
            outletId = 4
            if (outletTildeNumber > 1):
                #object 5 is the snake~ int with variable number of inlets
                snakeInId = 5
                #object 6 is the patch outlet~
                outletTildeId = 6
                #object 7 is the comment at the bottom of the patch
                commentId = 7
            else:
                if (outletTildeNumber == 1):
                    #object 5 is the patch outlet~
                    outletTildeId = 5
                    #object 6 is the comment at the bottom of the patch
                    commentId = 6
                else:
                    #no outlet~
                    #object 5 is the comment at the bottom of the patch
                    commentId = 5
        else:
            if (inletTildeNumber == 0):
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
        if (addSnakeOutTest == True):
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
        #moves the canvas to the end if there is one
        pdLib.movesCanvasLineToTheEnd(pdCodeUI)
        #
        pdLib.savePdCode(pdCodeMC, mcFilePath)
        print("==>canvas processed")
    else:
        print("==>canvas not processed")
    f.close()



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

        if (fullFileName.endswith('.pd')) and not("trajectory" in myProcessName):
            print("Creating "+myProcessName+"_m_ui.pd and "+myProcessName+"_m.pd")     
            generalProcess(fullFileName, directory, myProcessName)
                 
            