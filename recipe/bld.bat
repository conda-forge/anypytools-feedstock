"%PYTHON%" -m pip install . --no-deps -vv --report record.txt 

cd "%PREFIX%"
mkdir share\notebooks\AnyPyTools
cd share\notebooks\AnyPyTools
xcopy "%SRC_DIR%\docs\Tutorial" . /S/Y/I

copy "%RECIPE_DIR%\AnyPyToolsTutorial.bat" "%SCRIPTS%\AnyPyToolsTutorial.bat"
cd "%PREFIX%"
mkdir Menu
copy "%RECIPE_DIR%\menu-windows-manual.json" "%PREFIX%\Menu\AnyPyToolsTutorial.json"
copy "%SRC_DIR%\anypytools.ico" "%PREFIX%\Menu\anypytools.ico"

cd "%SRC_DIR%"
