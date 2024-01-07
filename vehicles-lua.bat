@echo off
setlocal EnableDelayedExpansion

set LUA_FILE=output.lua

echo "return {" > %LUA_FILE%

for %%f in (*.ytd) do (
    set name=%%~nf
    set name=!name:_= !
 echo "    { model = '!name!', name = '!name!', brand = 'somebrand', price = 125000, category = 'compacts', type = 'automobile', shop = 'pdm' }," >> %LUA_FILE%
)

echo "}" >> %LUA_FILE%

echo "Done."
