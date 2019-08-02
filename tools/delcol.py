'''

delcol.py 

@summary: Delete some hard coded text color information from an ODT document (command line)
Extracts and modifies "content.xml"

Syntax: delcol.py <ODT file to modify>

@author: Peter Triesberger
@see: https://github.com/peter88213/OOTyW
@version: v0.0.1
@license: The MIT License (https://opensource.org/licenses/mit-license.php)
@copyright: (c) 2019, Peter Triesberger
@since: 2019-08-02

'''
import sys, zipfile, os

replaceList =[
    'fo:color="#cccccc"||',
    'fo:color="#000000"||',
    'style:use-window-font-color="true"||',
    ]

def searchAndReplace(processData, replaceList):
    '''
    @summary: Modifying a string by looping through a list of search/replacement items.
    @param: processData: string to be modified.
    @param: replaceList: list of strings containing search/replacement items. 
        Structure of each list element: "<search item>|<replacement item>|" 
        The replacement item can be empty.  
    @return: Modified string
    '''   
    FindCount = 0
    for line in replaceList:
        replaceItem = line.split("|")
        if (processData.find(replaceItem[0]) != -1): 
            processData = processData.replace(replaceItem[0],replaceItem[1])
            FindCount += 1
    if (FindCount is 0):
        return("")
    else: 
        return(processData)

if __name__ == '__main__':
    xmldoc ="content.xml"
    odtdoc = sys.argv[1]
    try:
        with zipfile.ZipFile(odtdoc,'r') as myzip:
            myzip.extract(xmldoc)
            myzip.close
        myTextFile = open(xmldoc,'r')
        str = myTextFile.read()
        myTextFile.close()

        str = searchAndReplace(str, replaceList)
        
        if (str != ""):
            myTextFile = open(xmldoc,'w')
            myTextFile.write(str)
            myTextFile.close()
        else: 
            os.remove(xmldoc)
    except:
        print("Syntax: delcol.py <ODT file to modify>")
    