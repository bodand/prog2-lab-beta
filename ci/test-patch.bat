git clone %~1 %~2
cd %~2
git apply --reject --ignore-space-change --ignore-whitespace --whitespace=fix ..\%~2.patch

if "%~2" == "lab_01" cd nagyobb

if "%DO_MINGW%" == "yes" set "cmake_gen=-G "MinGW Makefiles""
if "%DO_MSYS2%" == "yes" set "cmake_gen=-G "MSYS Makefiles""
if "%DO_MSVC%" == "yes" set "cmake_gen=-G "Visual Studio 17 2022""

cmake -S. -B_build %cmake_gen%
