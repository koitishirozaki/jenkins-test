echo "PD"
echo %~pd0
echo %~pd0\..
echo %~pd0\..\..

echo "DP"
echo %~dp0
echo %~dp0\..
echo %~dp0\..\..

for %%f in ("%cd%\..\..") do set "secondParentFolder=%%~ff"
echo %secondParentFolder%