##create interactions
data modify storage mc:data temp.list set value []
$data modify storage mc:data temp.list set from storage mc:data elements[{id:$(current_element)}].pages[$(current_page)].interaction

data modify storage mc:data load.interaction set value []

$tag @n[type=text_display,limit=1,tag=mc.gui,scores={mc.data=$(current_element)}] add mc.gui.setup 
$execute at @n[type=text_display,limit=1,tag=mc.gui,scores={mc.data=$(current_element)}] if data storage mc:data temp.list[0] summon text_display run function mc:main/gui/setup/load_interactions/loop with storage mc:data temp.list[0].background
$tag @n[type=text_display,limit=1,tag=mc.gui,scores={mc.data=$(current_element)}] remove mc.gui.setup

$data modify storage mc:data elements[{id:$(current_element)}].pages[$(current_page)].interaction set from storage mc:data load.interaction
$data modify storage mc:data elements[{id:$(current_element)}].interaction append from storage mc:data load.interaction[]