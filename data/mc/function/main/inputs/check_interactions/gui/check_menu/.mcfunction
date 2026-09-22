
execute as @e[type=text_display,tag=mc.gui.current,limit=1,distance=..5] run return fail

$function mc:main/inputs/check_interactions/gui/check_menu/loop with storage mc:data elements[{id:$(id)}].background

execute unless entity @s[tag=mc.gui.current] run return fail
$data modify storage mc:data temp.list set from storage mc:data elements[{id:$(id)}].interaction
execute if data storage mc:data temp.list[0] run function mc:main/inputs/check_interactions/gui/check_menu/interaction with storage mc:data temp.list[0].background

execute if score #mc.gui_editor mc.data matches 1 run function mc:main/inputs/trigger/edge/menu with entity @s data 
