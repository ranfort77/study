﻿#Include MyFile.ahk
file1 := new File( A_ScriptFullPath ) ;a file object of our test.ahk
file2 := new File( "File.ahk" ) ;a file object of our "File.ahk" containing our file class
Msgbox % file1.getPathDir() ;get containing folder
Msgbox % file2.getPathDir() ;get containing folder