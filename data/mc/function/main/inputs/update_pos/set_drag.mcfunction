function mc:main/inputs/check_interactions/gui/check_layer/sort/append with entity @s data

tag @s add mc.gui.dragging

execute store result score #mc.gui.drag.old_offset_x mc.data run data get entity @s data.origin_x
scoreboard players operation #mc.gui.drag.old_offset_x mc.data -= #mc.mouse.x mc.data

execute store result score #mc.gui.drag.old_offset_y mc.data run data get entity @s data.origin_y
scoreboard players operation #mc.gui.drag.old_offset_y mc.data -= #mc.mouse.y mc.data