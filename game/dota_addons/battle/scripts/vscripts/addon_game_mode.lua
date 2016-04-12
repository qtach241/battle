print('\n\n***Begin Loading LUA Script***\n\n')

DEBUG_MODE = true

require('internal/util')
require('gamemode')

--[[
Reserved function invoked by Dota 2 engine. The Precache function will load all 
required assets in advance of them being required by the game.
]]
function Precache(context)
  DebugPrint("Precache Success!")
end

--[[
Reserved function invoked by Dota 2 engine. The Activate function is used to 
setup the game mode for the first time. It is run when the file is loaded and is 
generally used to setup classes for the game mode to utilize.
]]
function Activate()
  DebugPrint("Activate Success!")
end

print('\n\n***Finished Loading LUA Script***\n\n')