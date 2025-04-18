:: 00-compile

@echo ---------------------------------- 00-compile ----------------------------------

cmake -S . -B build -G "Visual Studio 17 2022" -A "x64"
cmake --build build --config Release

:: 01-hello-world

@echo -------------------------------- 01-hello-world --------------------------------

build\problems\01-hello-world\Release\01-hello-world.exe

:: 02-luajit

@echo ---------------------------------- 02-luajit -----------------------------------

build\_deps\luajit2-build\Release\luajit.exe -e "print('Hello world!')"

:: 03-pcg-random

@echo -------------------------------- 03-pcg-random ------------ --------------------

build\problems\03-pcg-random\Release\03-pcg-random.exe
