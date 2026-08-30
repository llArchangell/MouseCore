
$scoreboard players set #mc.gui.screen_bounds.temp mc.data $(width)
scoreboard players operation #mc.gui.screen_bounds mc.data += #mc.gui.screen_bounds.temp mc.data



execute store result score #mc.gui.drag.temp mc.data run data get entity @s data.origin_x
scoreboard players operation #mc.gui.drag.temp mc.data -= #mc.mouse.strength_x mc.data

execute if score #mc.gui.drag.temp mc.data <= #mc.gui.screen_bounds mc.data run scoreboard players operation #mc.gui.drag.temp mc.data = #mc.gui.screen_bounds mc.data

execute store result entity @s data.origin_x int 1 run scoreboard players get #mc.gui.drag.temp mc.data
execute store result entity @s data.x float 0.001 run scoreboard players get #mc.gui.drag.temp mc.data

execute as @a on vehicle at @s as @n[type=text_display,tag=mc.gui.dragging,limit=1,distance=..5] run function mc:main/inputs/update_pos/update_gui_pos with entity @s data


##mouse
scoreboard players operation #mc.gui.drag.offset_x mc.data = #mc.gui.drag.temp mc.data
scoreboard players operation #mc.gui.drag.offset_x mc.data -= #mc.gui.drag.old_offset_x mc.data
scoreboard players operation #mc.mouse.x mc.data = #mc.gui.drag.offset_x mc.data
execute store result storage mc:data input.mouse.x float 0.001 run scoreboard players get #mc.mouse.x mc.data
