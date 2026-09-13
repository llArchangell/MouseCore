##get y
scoreboard players set #mc.mouse.rot_x mc.data 0
$scoreboard players set #mc.mouse.old_rot_x mc.data $(origin_x)

# get_scores
scoreboard players operation #mc.mouse.diff_x mc.data = #mc.mouse.rot_x mc.data
scoreboard players operation #mc.mouse.diff_x mc.data -= #mc.mouse.old_rot_x mc.data

# wrap into -18000..18000 so minecraft don't fuck up with my system
scoreboard players add #mc.mouse.diff_x mc.data 18000
scoreboard players operation #mc.mouse.diff_x mc.data %= #36000 mc.data
scoreboard players add #mc.mouse.diff_x mc.data 36000
scoreboard players operation #mc.mouse.diff_x mc.data %= #36000 mc.data
scoreboard players remove #mc.mouse.diff_x mc.data 18000

##x placement
execute store result score #mc.gui.drag.temp mc.data run data get entity @s data.origin_x
execute if score #mc.mouse.diff_x mc.data matches ..-1 run scoreboard players operation #mc.gui.drag.temp mc.data += #mc.mouse.strength_x mc.data
execute if score #mc.mouse.diff_x mc.data matches 1.. run scoreboard players operation #mc.gui.drag.temp mc.data -= #mc.mouse.strength_x mc.data
execute store result entity @s data.origin_x int 1 run scoreboard players get #mc.gui.drag.temp mc.data
execute store result entity @s data.x float 0.001 run scoreboard players get #mc.gui.drag.temp mc.data

##get y
scoreboard players set #mc.mouse.rot_y mc.data 0
$scoreboard players set #mc.mouse.old_rot_y mc.data $(origin_y)

# get_scores
scoreboard players operation #mc.mouse.diff_y mc.data = #mc.mouse.rot_y mc.data
scoreboard players operation #mc.mouse.diff_y mc.data -= #mc.mouse.old_rot_y mc.data

# wrap into -18000..18000 so minecraft don't fuck up with my system
scoreboard players add #mc.mouse.diff_y mc.data 18000
scoreboard players operation #mc.mouse.diff_y mc.data %= #36000 mc.data
scoreboard players add #mc.mouse.diff_y mc.data 36000
scoreboard players operation #mc.mouse.diff_y mc.data %= #36000 mc.data
scoreboard players remove #mc.mouse.diff_y mc.data 18000

##y placement
execute store result score #mc.gui.drag.temp mc.data run data get entity @s data.origin_y
execute if score #mc.mouse.diff_y mc.data matches 1.. run scoreboard players operation #mc.gui.drag.temp mc.data += #mc.mouse.strength_y mc.data
execute if score #mc.mouse.diff_y mc.data matches ..-1 run scoreboard players operation #mc.gui.drag.temp mc.data -= #mc.mouse.strength_y mc.data
execute store result entity @s data.origin_y int 1 run scoreboard players get #mc.gui.drag.temp mc.data
execute store result entity @s data.y float 0.001 run scoreboard players get #mc.gui.drag.temp mc.data

##setup
execute as @a on vehicle at @s as @n[type=text_display,tag=mc.gui.dragging,limit=1,distance=..5] run function mc:main/inputs/update_pos/update_gui_pos with entity @s data
