@echo off
setlocal EnableDelayedExpansion

set LUA_FILE=output.lua

echo "return {" > %LUA_FILE%

for %%f in (*.ytd) do (
    set name=%%~nf
    set name=!name:_= !
    echo "['!name!'] = {" >> %LUA_FILE%
    echo "    ['name'] = '!name!', " >> %LUA_FILE%
    echo "    ['model'] = '!name!', " >> %LUA_FILE%
    echo "    ['price'] = 20000, " >> %LUA_FILE%
    echo "    ['category'] = 'compacts', " >> %LUA_FILE%
    echo "    ['categoryLabel'] = 'Compacts', " >> %LUA_FILE%
    echo "    ['hash'] = '!name!', " >> %LUA_FILE%
    echo "    ['shop'] = 'pdm', " >> %LUA_FILE%
    echo "}, " >> %LUA_FILE%
)

echo "}" >> %LUA_FILE%

echo "Done."
