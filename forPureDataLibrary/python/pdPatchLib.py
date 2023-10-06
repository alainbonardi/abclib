#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 11 15:53:35 2023
@author: alainbonardi - CICM - 2023
This is a set of Python functions and declarations to open, parse, transform and save PureData patches
"""


#declaration of constants
Xobj = "#X obj"
Xmsg = "#X msg"
Xtext = "#X text"
Xconnect = "#X connect"

#tests if the current line describes an object
def isObj(myLine):
    if (myLine[0:6] == Xobj):
        return True
    else:
        return False
    
#tests if the current line describes a message
def isMsg(myLine):
    if (myLine[0:6] == Xmsg):
        return True
    else:
        return False
    
#tests if the current line describes a comment text
def isText(myLine):
    if (myLine[0:7] == Xtext):
        return True
    else:
        return False

#tests if the current line describes a connection    
def isConnection(myLine):
    if (myLine[0:10] == Xconnect):
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
    ySOut = -1
    if ("r \$0-in;" in myLine):
        #print(myLine)
        ySOut = getsYPosObject(myLine)
        #print(str(ySnakeOut))
    return ySOut
        
def getsYSnakeIn(myLine):
    ySIn = -1
    if ("s \$0-out;" in myLine):
        #print(myLine)
        ySIn = getsYPosObject(myLine)
        #print(str(ySnakeIn))
    return ySIn
        
        
#tests if the current line describes the object compiled from the Faust code
def isFaustObject(myLine, faustObjectName):
    if (faustObjectName in myLine):
        return True
    else:
        return False
    
#adds the snake~ out object to the code   
def addSnakeOut(outputNumber, myCode, lineNumber, ySOut):
    newSnakeOutLine = Xobj+" "+str(70)+" "+str(ySOut)+" snake~ out "+str(outputNumber)+";\n"
    myCode.insert(lineNumber, newSnakeOutLine)

#adds the snake~ in object to the code
def addSnakeIn(inputNumber, myCode, lineNumber, ySIn):
    newSnakeInLine = Xobj+" "+str(70)+" "+str(ySIn)+" snake~ in "+str(inputNumber)+";\n"
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


def getObjectData(line, dataIndex):
    if (isObj(line) or isMsg(line)):
        dataSet = line[6:]
        dataInfo = dataSet.split()
        return(dataInfo[dataIndex])

def getsXPosObject(line):
    return int(getObjectData(line, 0))

def getsYPosObject(line):
    return int(getObjectData(line, 1))
    
#deletes the connections starting from a given object
def deleteAllConnectionsFromObject(myCode, objectIndex):
    i = 0
    for line in myCode:
        if (getConnectionData(line, 0)==str(objectIndex)):
            #print("ligne to delete=>"+str(i)+" "+line)
            del myCode[i]
        i = i+1
        
def deleteOneConnectionFromObject(myCode, objectIndex, outIndex):
    i = 0
    for line in myCode:
        if isConnection(line):
            if ((getConnectionData(line, 0)==str(objectIndex)) and (getConnectionData(line, 1)==str(outIndex))):
                #print("ligne to delete=>"+str(i)+" "+line)
                del myCode[i]
        i = i+1

#deletes the connections going to a given object        
def deleteAllConnectionsToObject(myCode, objectIndex):
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

#gets the last data on a line as a character string including the final semicolon ;
#removes the semicolon and converts the string to a number
def lastDataProcess(lastDataString):
    lastDataString = lastDataString[:-1]
    return int(lastDataString)

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

    
def displayPdCode(myCode):
    i = 0
    for line in myCode:
        print(str(i)+" "+line)
        i = i+1


def savePdCode(myCode, myFileName):
    with open(myFileName, 'w') as f:
        for line in myCode:
            f.write(line)


