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
import sys
import zipfile
import os

replaceList = [
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
            processData = processData.replace(replaceItem[0], replaceItem[1])
            FindCount += 1
#            print(replaceItem[0]+" - ",FindCount)
    if (FindCount is 0):
        return("")
    else:
        return(processData)


if __name__ == '__main__':
    xmldoc = "content.xml"
    odtdoc = sys.argv[1]
#    print(odtdoc)
    str = ""
    try:
        with zipfile.ZipFile(odtdoc, 'r') as myzip:
            myzip.extract(xmldoc)
            myzip.close
#        print(xmldoc+" extracted ...")
    except:
        sys.exit('Syntax: delcol.py <ODT file to modify>')

    try:
        myTextFile = open(xmldoc, 'r', encoding='utf-8')
#        print(xmldoc+" opened ...")
        str = myTextFile.read()
        str = searchAndReplace(str, replaceList)

    finally:
        myTextFile.close()
#        print(xmldoc+" closed ...")
        os.remove(xmldoc)
#        print(xmldoc+" deleted ...")

    if (str != ""):
        myTextFile = open(xmldoc, 'w', encoding='utf-8')
        myTextFile.write(str)
        myTextFile.close()
#        print(xmldoc+" written ...")
