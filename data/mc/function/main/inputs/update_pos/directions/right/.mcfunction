## set sensibility
scoreboard players operation #mc.mouse.strength_x mc.data *= #mc.sensibility mc.data
scoreboard players operation #mc.mouse.strength_x mc.data /= #1000 mc.data

##set screen size
scoreboard players set #mc.gui.screen_bounds mc.data -623

##check drag
scoreboard players set #mc.mouse.lock mc.data 0
execute as @n[type=text_display,tag=mc.gui.dragging,limit=1,distance=..5] run return run function mc:main/inputs/update_pos/directions/right/drag with entity @s data
execute as @n[type=text_display,tag=mc.gui.sliding,limit=1,distance=..5] run return run function mc:main/inputs/update_pos/directions/right/slide with entity @s data

##get new pos
scoreboard players operation #mc.mouse.x mc.data -= #mc.mouse.strength_x mc.data

##check if out of bounds
execute if score #mc.mouse.x mc.data <= #mc.gui.screen_bounds mc.data run scoreboard players operation #mc.mouse.x mc.data = #mc.gui.screen_bounds mc.data
execute if score #mc.mouse.x mc.data <= #mc.gui.screen_bounds mc.data store result storage mc:data input.mouse.x float 0.001 run return run scoreboard players get #mc.gui.screen_bounds mc.data

##store new pos
execute store result storage mc:data input.mouse.x float 0.001 run scoreboard players get #mc.mouse.x mc.data

