## set sensibility
scoreboard players operation #mc.mouse.strength_x mc.data *= #mc.sensibility mc.data
scoreboard players operation #mc.mouse.strength_x mc.data /= #1000 mc.data

##set screen size
scoreboard players set #mc.gui.screen_bounds mc.data -622

##get new pos
scoreboard players operation #mc.mouse.x mc.data -= #mc.mouse.strength_x mc.data
scoreboard players operation #mc.mouse.x mc.data = #mc.mouse.x mc.data

##check if out of bounds
execute if score #mc.mouse.x mc.data <= #mc.gui.screen_bounds mc.data run scoreboard players operation #mc.mouse.x mc.data = #mc.gui.screen_bounds mc.data
execute if score #mc.mouse.x mc.data <= #mc.gui.screen_bounds mc.data store result storage mc:data input.mouse.x float 0.001 run return run scoreboard players get #mc.gui.screen_bounds mc.data

##store new pos
execute store result storage mc:data input.mouse.x float 0.001 run scoreboard players get #mc.mouse.x mc.data

