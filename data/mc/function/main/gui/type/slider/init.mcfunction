
tag @s add mc.gui.sliding

data modify storage mc:data temp.slide set value {}
data modify storage mc:data temp.slide.direction set from storage mc:data temp_current_action.actions[{type:slider}].direction
data modify entity @s data.target_id set from storage mc:data temp_current_action.id

function mc:main/gui/type/slider/get_origin with entity @s data