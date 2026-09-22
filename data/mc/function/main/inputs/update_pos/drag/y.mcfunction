$execute store result storage mc:data elements[{id:$(id)}].background.origin_y int 1 run scoreboard players get #mc.gui.drag.temp mc.data
$execute store result storage mc:data elements[{id:$(id)}].background.y float 0.001 run scoreboard players get #mc.gui.drag.temp mc.data
$execute as @a on vehicle at @s as @n[type=text_display,tag=mc.gui.dragging,limit=1,distance=..5] run function mc:main/inputs/update_pos/update_gui_pos with storage mc:data elements[{id:$(id)}].background
