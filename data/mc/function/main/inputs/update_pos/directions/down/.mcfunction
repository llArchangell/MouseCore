## set sensibility
scoreboard players operation #mc.mouse.strength_y mc.data *= #mc.sensibility mc.data
scoreboard players operation #mc.mouse.strength_y mc.data /= #1000 mc.data

##set screen size
scoreboard players set #mc.gui.screen_bounds mc.data -350

##get new pos
scoreboard players operation #mc.mouse.y mc.data -= #mc.mouse.strength_y mc.data
scoreboard players operation #mc.mouse.y mc.data = #mc.mouse.y mc.data

##check if out of bounds
execute if score #mc.mouse.y mc.data <= #mc.gui.screen_bounds mc.data run scoreboard players operation #mc.mouse.y mc.data = #mc.gui.screen_bounds mc.data
execute if score #mc.mouse.y mc.data <= #mc.gui.screen_bounds mc.data store result storage mc:data input.mouse.y float 0.001 run return run scoreboard players get #mc.gui.screen_bounds mc.data

##store new pos
execute store result storage mc:data input.mouse.y float 0.001 run scoreboard players get #mc.mouse.y mc.data

