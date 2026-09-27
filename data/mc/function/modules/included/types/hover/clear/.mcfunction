execute if score #mc.gui.looking_interaction mc.data matches 1 run return fail

scoreboard players set #mc.gui.hover_time mc.data 0

data modify storage mc:data temp.clear_hover.list[0].current_element set from storage mc:data temp.clear_hover.id
execute if data storage mc:data temp.clear_hover.list[0] run function mc:modules/included/types/hover/clear/loop with storage mc:data temp.clear_hover.list[0]