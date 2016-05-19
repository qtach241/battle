--[[ Main ]]

print('\n***Begin Loading LUA Script***\n')

require('battle')

--[[
Reserved function invoked by Dota 2 engine. The Precache function will load all 
required assets in advance of them being required by the game.
]]
function Precache(context)
  PrecacheUnitByNameSync("undying", context)
  print('\nPrecache Success!\n')
end

--[[
Reserved function invoked by Dota 2 engine. The Activate function is used to 
setup the game mode for the first time. It is run when the file is loaded and is 
generally used to setup classes for the game mode to utilize.

Think of this as the "main" function.
]]
function Activate()
  GameRules.Battle = Battle()
  GameRules.Battle:_InitGameMode()
  print('\nActivate Success!\n')
end

print('\n***Finished Loading LUA Script***\n')
