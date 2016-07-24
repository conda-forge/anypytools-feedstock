"%PYTHON%" setup.py install 

cd "%PREFIX%"
mkdir share\notebooks\AnyPyTools
cd share\notebooks\AnyPyTools
xcopy "%SRC_DIR%\Tutorial" . /S/Y/I

copy "%RECIPE_DIR%\AnyPyToolsTutorial.bat" "%SCRIPTS%\AnyPyToolsTutorial.bat"
