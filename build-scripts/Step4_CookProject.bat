rem default "C:\Program Files\Epic Games\UE_4.17\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="C:\Source\PROJECT_NAME\PROJECT_NAME.uproject" -noP4 -platform=Win64 -clientconfig=Development -cook -allmaps -NoCompile -stage -pak -archive -archivedirectory="C:\Builds\PROJECT_NAME"
rem Win64: "E:\UE4_26\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="E:\kyu_shitcreep_Amolang_Dev_9203\VR_Multiplay\VR_Multiplay.uproject" -noP4 -platform=Win64 -clientconfig=Development -cook -allmaps -NoCompile -stage -pak -archive -archivedirectory="E:\kyu_shitcreep_Amolang_Dev_9203\VR_Multiplay\Build"

rem Linux
"E:\UE4_26\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="E:\kyu_shitcreep_Amolang_Dev_9203\VR_Multiplay\VR_Multiplay.uproject" -noP4 -build -cook -compressed -stage -noclient -server -serverplatform=Linux -serverconfig=Development -pak -archive -archivedirectory="E:\kyu_shitcreep_Amolang_Dev_9203\VR_Multiplay\Build"