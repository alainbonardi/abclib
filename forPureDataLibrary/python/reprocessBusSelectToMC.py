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
snakeOutLine = -1
snakeOutSize = 0
#coordinates of the snake~ out object
xSnakeOut = 0
ySnakeOut = 0
#coordinates of the inlet~ object
xInletTilde = 0
yInletTilde = 0
#index of the last object or message
objectIndex = 0
#index of the compiled object from Faust code
faustObjectIndex = 0
#name of the compiled object from Faust code
faustObjectName = 'abc'


#initialization of global variables
def init():
    global objectList, msgList, connectionList
    global inletTildeList, outletTildeList, snakeOutIndex, snakeOutLine, xSnakeOut, ySnakeOut, snakeOutSize
    global faustObjectIndex, faustObjectName
    global xInletTilde, yInletTilde
    global objectIndex
    objectList = []
    msgList = []
    connectionList = []
    inletTildeList = []
    outletTildeList = []
    snakeOutIndex = 0
    snakeOutLine = -1
    snakeOutSize = 0
    xSnakeOut = 0
    ySnakeOut = 0
    xInletTilde = 0
    yInletTilde = 0
    objectIndex = 0
    faustObjectIndex = 0


def parsePdCode(myCode):
    global objectList, msgList, connectionList
    global inletTildeList, outletTildeList, snakeOutIndex, snakeOutLine, xSnakeOut, ySnakeOut, snakeOutSize
    global faustObjectIndex, faustObjectName
    global xInletTilde, yInletTilde
    global objectIndex
    
    init()
    connectionIndex = 0
    i = 0

    
    for line in myCode:
        # print(str(i)+" "+line)

        if pdLib.isInletTilde(line):
            inletTildeList.append(objectIndex)
            xInletTilde = pdLib.getsXPosObject(line)
            yInletTilde = pdLib.getsYPosObject(line)
            
        if pdLib.isOutletTilde(line):
            outletTildeList.append(objectIndex)
            
        if pdLib.isSnakeOut(line):
            snakeOutIndex = objectIndex
            snakeOutLine = i
            xSnakeOut = pdLib.getsXPosObject(line)
            ySnakeOut = pdLib.getsYPosObject(line)
            snakeOutSize = pdLib.lastDataProcess(pdLib.getObjectData(line, 4))
                
            
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
            
            
        i = i+1



def dump(myCode):
    global objectList, msgList, connectionList
    global inletTildeList, outletTildeList, snakeOutIndex, snakeOutLine, xSnakeOut, ySnakeOut, snakeOutSize
    global faustObjectIndex, faustObjectName
    global xInletTilde, yInletTilde
    print("____________________________________________________________")
    print("\n")
    print("Number of lines in the code = "+str(len(myCode)))
    print(str(len(objectList))+" objects")
    print(str(len(msgList))+" msgs")
    print(str(len(connectionList))+ " connections")
    print(str(len(inletTildeList))+ " inlet~")
    print(str(len(outletTildeList))+ " outlet~")
    print("snakeOutIndex = " + str(snakeOutIndex))
    #print("snakeInIndex = " + str(snakeInIndex))
    print("ySnakeOut = "+str(ySnakeOut))
    #print("ySnakeIn = "+str(ySnakeIn))
    print("faustObjectIndex = " + str(faustObjectIndex))
    print("faustObjectName = "+faustObjectName)
    print("\n")
    print("____________________________________________________________")

    



def pdCodeProcessFor2Buses(fileName, patchFolder, objectName):
    global objectList, msgList, connectionList
    global inletTildeList, outletTildeList, snakeOutIndex, snakeOutLine, xSnakeOut, ySnakeOut, snakeOutSize
    global faustObjectIndex, faustObjectName
    global xInletTilde, yInletTilde
    
    f = open(fileName, 'r')
    pdCodeUI = f.readlines()
    faustObjectName = objectName
    #
    # parses the original code
    parsePdCode(pdCodeUI)
    print("faustObjectIndex = "+str(faustObjectIndex))
    step = int(snakeOutSize / 2)

    if ((snakeOutIndex > 0) and (snakeOutSize > step)):
        print("snake~ out is present on line # "+str(snakeOutLine))
        #deletes all connections from snake out above the third one
        for i in range(step, snakeOutSize):
            pdLib.deleteOneConnectionFromObject(pdCodeUI, snakeOutIndex, i)
        #modifies the existing snake out to have 3 outputs
        snakeOutCommand = pdCodeUI[snakeOutLine]
        newSnakeOutCommand = pdLib.Xobj+" "+pdLib.getObjectData(snakeOutCommand, 0)+" "+pdLib.getObjectData(snakeOutCommand, 1)+" snake~ out "+str(step)+";\n"
        pdCodeUI[snakeOutLine] = newSnakeOutCommand
        #line number of the first insertion
        #insert new objects and connections at the end 
        otherInletsInsertLine = len(pdCodeUI)+1
        #number of pairs inlet~ + snake~ out  to insert
        insertPairNumber = int(snakeOutSize / step - 1)
        #inserts pairs of inlet~ + snake~ out objects
        for i in range(insertPairNumber):
            pdCodeUI.insert(otherInletsInsertLine+2*i, pdLib.Xobj+" "+str(xInletTilde+(i+1)*100)+" "+str(yInletTilde)+" inlet~;\n")
            pdCodeUI.insert(otherInletsInsertLine+2*i+1, pdLib.Xobj+" "+str(xSnakeOut+(i+1)*100)+" "+str(ySnakeOut)+" snake~ out "+str(step)+";\n")
        otherConnectionsInsertLine = otherInletsInsertLine + 2 * insertPairNumber
        #inserts connections: 
        #1) between every inlet~ and snake~ out inserted
        #2) between every snake~ out and the Faust compiled object
        for i in range(insertPairNumber):
            pdCodeUI.insert(otherConnectionsInsertLine+4*i, pdLib.Xconnect+" "+str(objectIndex+2*i)+" 0 "+str(objectIndex+2*i+1)+ " 0;\n")
            for j in range(step):
                pdCodeUI.insert(otherConnectionsInsertLine+4*i+j+1, pdLib.Xconnect+" "+str(objectIndex+2*i+1)+" "+str(j)+" "+str(faustObjectIndex)+ " "+str(step*(i+1)+1+j)+";\n")
            #pdCodeUI.insert(otherConnectionsInsertLine+4*i+2, pdLib.Xconnect+" "+str(objectIndex+2*i+1)+" 1 "+str(faustObjectIndex)+ " "+str(3*(i+1)+2)+";\n")
            #pdCodeUI.insert(otherConnectionsInsertLine+4*i+3, pdLib.Xconnect+" "+str(objectIndex+2*i+1)+" 2 "+str(faustObjectIndex)+ " "+str(3*(i+1)+3)+";\n")
        #moves the canvas to the end if there is one
        pdLib.movesCanvasLineToTheEnd(pdCodeUI)
        #
        pdLib.savePdCode(pdCodeUI, fileName)
    else:
        print("No snake~ out object")



#directory = '/Users/alainbonardi/Dropbox/faustFactory/abclib_factory/abclib_labo_brainstorming/manipulationPureDataEnPython/patchs'
directory = askdirectory()
print("____________________________________________________________")
print("____________________________________________________________")
print("reprocesssMapCanvasToMC Python program - CICM  - 2023")
print("Adapting multichannel for double bus input")
print("All canvas in this directory: "+directory)
print("will be processed")
print("____________________________________________________________")
print("____________________________________________________________")


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
            #only processes map abstractions
            if "busselect" in myProcessName:
                print("Processing "+myProcessName)     
                if "_m_ui" in myProcessName:
                    myProcessName = myProcessName[:-5]
                else:
                    if "_m" in myProcessName:
                        myProcessName = myProcessName[:-2]
                pdCodeProcessFor2Buses(fullFileName, directory, myProcessName)
                 
            