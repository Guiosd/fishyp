@echo off
color: 0a
cd ..
@echo on
echo BULIDING GAME
lime build windows -release
echo UPLOADING 64 BIT VERSION TO ITCH
bulter push ./export/release/windows/bin guiosd/fishy:windows-64bit
pause