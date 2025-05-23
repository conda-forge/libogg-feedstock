setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
mkdir build
cd build

:: Configure using the CMakeFiles
cmake -G "Ninja" ^
	-DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
	-DCMAKE_BUILD_TYPE:STRING=Release ^
	-DINSTALL_DOCS=OFF ^
	-DBUILD_SHARED_LIBS=1 ^
	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 ^
	..
if errorlevel 1 exit 1

:: Build!
ninja
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
