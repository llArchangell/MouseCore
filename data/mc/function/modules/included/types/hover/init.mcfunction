data modify storage mc:data load.interaction set from storage mc:data current_action.action[{type:hover}].interaction

tag @s add mc.gui.setup
execute at @s run function mc:main/gui/setup/load_interactions/init
tag @s remove mc.gui.setup

data modify storage mc:data temp.clear_hover set value {id:0,list:[]}
data modify storage mc:data temp.clear_hover.list set from storage mc:data load.interaction
$data modify storage mc:data temp.clear_hover.id set value $(current_element)

$data modify storage mc:data elements[{id:$(current_element)}].interaction append from storage mc:data load.interaction[]
$execute as @n[scores={mc.data=$(current_element)}] run function mc:main/gui/setup/set_depth/init {id:$(current_element)}
