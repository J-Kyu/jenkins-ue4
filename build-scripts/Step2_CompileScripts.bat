rem "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" "C:\Source\PROJECT_NAME\PROJECT_NAME.sln" /t:build /p:Platform=Win64;verbosity=diagnostic

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe"  %WORKSPACE%\VR_Multiplay\VR_Multiplay.sln /t:build /p:Platform=Linux;verbosity=diagnostic
