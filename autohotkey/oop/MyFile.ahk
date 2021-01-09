class File {
	__New( fileName ) {
		if ( !fileExist( fileName ) )
			Msgbox File doesn't exist
		if ( inStr( fileExist( fileName ), "D" ) ) ;if file is a folder or a drive
			Msgbox File is not a valid File
		Loop, Files, % fileName, F ;since the fileName refers to a single file this loop will only execute once
			this.name := A_LoopFileLongPath ;and there it will set the path to the value we need
	}
	getPath() {
		return this.name
	}
	getPathName() {
		SplitPath, % this.name, fileName
		return fileName
	}
	getPathDir() { ;same as getDirectory
		return This.getPathDirectory()
	}
	getPathDirectory() {
		SplitPath, % this.name, , fileDirectory
		return fileDirectory
	}
	getPathExtension() {
		SplitPath, % this.name , , , fileExtension
		return fileExtension
	}
	getPathNameNoExtension() {
		SplitPath, % this.name, , , , fileNameNoExtension
		return fileNameNoExtension
	}
	getPathDrive() {
		SplitPath, % this.name, , , , , fileDrive
		return fileDrive
	}
	getSize( unit := "" ) {
		FileGetSize, fileSize, % this.name, % unit
		return fileSize
	}
	getAttributes() { ;flag string see AutoHotkey Help: FileExist for more infos
		return FileExist( this.name )
	}
	getTimeAccessed() { ;in YYYYMMDDHH24MISS see AutoHotkey help for more infos
		FileGetTime, timeCreated, % this.name, A
		return timeCreated
	}
	getTimeModified() {
		FileGetTime, timeCreated, % this.name, M
		return timeCreated
	}
	getTimeCreated() {
		FileGetTime, timeCreated, % this.name, C
		return timeCreated
	}
}


