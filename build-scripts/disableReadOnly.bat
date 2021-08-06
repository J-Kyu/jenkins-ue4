set DLL=%WORKSPACE%\VR_Multiplay\Binaries\Win64\UE4Editor-VR_Multiplay.dll
set MODULE=%WORKSPACE%\VR_Multiplay\Binaries\Win64\UE4Editor.modules

if exist %DLL% (
    attrib -r %DLL% 
    echo "Disable Read-Only Property from " %DLL%
    dir %DLL%
)

if exist %MODULE% (
    attrib -r %MODULE%
    echo "Disable Read-Only Property from " %MODULE%
    dir %MODULE%
)