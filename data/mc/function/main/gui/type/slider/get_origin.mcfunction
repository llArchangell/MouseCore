
$execute store result score #mc.gui.drag.old_offset_x mc.data run data get entity @s data.interaction[{id:$(target_id)}].x
scoreboard players operation #mc.gui.drag.old_offset_x mc.data -= #mc.mouse.x mc.data

$execute store result score #mc.gui.drag.old_offset_y mc.data run data get entity @s data.interaction[{id:$(target_id)}].y
scoreboard players operation #mc.gui.drag.old_offset_y mc.data -= #mc.mouse.y mc.data
