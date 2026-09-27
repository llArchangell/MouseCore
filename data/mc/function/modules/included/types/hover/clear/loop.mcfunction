$data remove storage mc:data elements[{id:$(current_element)}].interaction[{id:$(id)}]
$execute as @n[type=text_display,limit=1,scores={mc.data=$(id)},distance=..2] run function mc:main/gui/kill/interaction

data remove storage mc:data temp.clear_hover.list[0]
data modify storage mc:data temp.clear_hover.list[0].current_element set from storage mc:data temp.clear_hover.id
execute if data storage mc:data temp.clear_hover.list[0] run function mc:modules/included/types/hover/clear/loop with storage mc:data temp.clear_hover.list[0]