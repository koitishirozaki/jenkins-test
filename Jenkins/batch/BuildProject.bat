set WORKSPACE=%~1
set BUILD_CFG=%~2
set TARGET_PLATFORMS=%~3
set RELEASE_VERSION=%~4
set EXPORT_PATH=%~5

set MAPS="B0A_AncientCrossroads+B0C_DeepSeaLensCave+B0B_LeviathanTemple+B0D_SeaShantieScene+B1A_MainArea+B1B_Cave+B1C_Connection00+B1D_Connection01+B2A_Main+B3A_HighPeaks+B1E_IndoorRuin+B3C_HeavenOfTheFreePeople+B3B_ForgottenPassageway+B3D_Connection+B4B_Cave+B4C_Volcano+B4A_Main+B5A_Caves+B5B_ShipBeach+B5C_CaptainBeach+B5D_LeviathanPrison+B6A_Main+B6B_InternalLoop0+B6C_InternalLoop1+B6D_FinalArea+B9A_FloodedRuins+B9B_UnderRuins+B9C_FishingVillage+Credits+MainMenu+Outro+Temple_B2+Temple_B3+Temple_B3_FakeVault+Temple_B9"

"C:\\Program Files\\Epic Games\\UE_5.5\\Engine\\Build\\BatchFiles\\RunUAT.bat" -ScriptsForProject="%WORKSPACE%\\MarkOfTheDeep.uproject" ^
BuildCookRun -project="%WORKSPACE%\\MarkOfTheDeep.uproject" -noP4 -clientconfig=%BUILD_CFG% -serverconfig=%BUILD_CFG% -installed ^
-unrealexe="C:\\Program Files\\Epic Games\\UE_5.5\\Engine\\Binaries\\Win64\\UnrealEditor-Cmd.exe\" -utf8output ^
-platform=%TARGET_PLATFORMS% -build -cook -map=%MAPS% -CookCultures=en -unversionedcookedcontent -pak -iostore ^
-compressed -createreleaseversion=%RELEASE_VERSION% -distribution -stage -package -archive -archivedirectory="%EXPORT_PATH%\\%RELEASE_VERSION%\\"
