set WORKSPACE=%~1

@echo off
setlocal 

cd %WORKSPACE%
echo Deleting folders
set FOLDERS=Binaries Saved Intermediate DerivedDataCache
for %%F in (%FOLDERS%) do (
	echo Looking for %%F
	if exist "%%F" (
		echo Deleting %%F...
		rmdir /s /q "%%F"
	)
)

if exist %WORKSPACE%/MarkOfTheDeep.sln (
	echo Deleting Visual Studio Solution
	del %WORKSPACE%/MarkOfTheDeep.sln
)

"C:\\Program Files\\Epic Games\\UE_5.5\\Engine\\Binaries\\DotNET\\UnrealBuildTool\\UnrealBuildTool.exe" -projectfiles -project="%WORKSPACE%\MarkOfTheDeep.uproject" -progress
