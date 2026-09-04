tag @s add mc.gui.sliding

data modify storage mc:data temp.slide set value {}
data modify storage mc:data temp.slide.direction set from storage mc:data temp_current_action.actions[{type:slider}].direction
data modify entity @s data.target_id set from storage mc:data temp_current_action.id


$execute store result score #mc.gui.drag.old_offset_x mc.data run data get entity @s data.interaction[{id:$(target_id)}].x
scoreboard players operation #mc.gui.drag.old_offset_x mc.data -= #mc.mouse.x mc.data

$execute store result score #mc.gui.drag.old_offset_y mc.data run data get entity @s data.interaction[{id:$(target_id)}].y
scoreboard players operation #mc.gui.drag.old_offset_y mc.data -= #mc.mouse.y mc.data
