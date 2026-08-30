
$scoreboard players set #mc.gui.screen_bounds.temp mc.data $(height)

execute store result score #mc.gui.drag.temp mc.data run data get entity @s data.origin_y
scoreboard players operation #mc.gui.drag.temp mc.data -= #mc.mouse.strength_y mc.data




execute if score #mc.gui.drag.temp mc.data <= #mc.gui.screen_bounds mc.data run scoreboard players set #mc.mouse.lock mc.data 1
execute if score #mc.gui.drag.temp mc.data <= #mc.gui.screen_bounds mc.data store result storage mc:data mouse.y float 0.001 run scoreboard players operation #mc.gui.drag.temp mc.data = #mc.gui.screen_bounds mc.data

execute store result entity @s data.origin_y int 1 run scoreboard players get #mc.gui.drag.temp mc.data
execute store result entity @s data.y float 0.001 run scoreboard players get #mc.gui.drag.temp mc.data

execute as @a on vehicle at @s as @n[type=text_display,tag=mc.gui.dragging,limit=1,distance=..5] run function mc:main/inputs/update_pos/update_gui_pos with entity @s data
