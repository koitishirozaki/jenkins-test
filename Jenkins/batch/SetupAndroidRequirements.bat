set WORKSPACE=%~1

if not exist "%WORKSPACE%\\Build\\Android\\" mkdir "%WORKSPACE%\\Build\\Android\\"
xcopy "C:\\Users\\MadMimicAdmin\\Documents\\Dependencies\\Android\\project.properties" "%WORKSPACE%\\Build\\Android\\" /e /i /y
xcopy "C:\\Users\\MadMimicAdmin\\Documents\\Dependencies\\Android\\GooglePlayAppID.xml" "%WORKSPACE%\\Build\\Android\\res\\values\\" /e /i /y
xcopy "%WORKSPACE%\\Config\\MOTDTest.keystore" "%WORKSPACE%\\Build\\Android\\\" /y /e /i