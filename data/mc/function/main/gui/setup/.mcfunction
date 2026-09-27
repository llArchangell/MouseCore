##load main entity
function mc:main/gui/setup/background with storage mc:data load.background

##load interactions + their texts
tag @s add mc.gui.setup
execute at @s run function mc:main/gui/setup/load_interactions/init
tag @s remove mc.gui.setup

##add loaded element to element list [temp]
data modify storage mc:data elements append from storage mc:data load

##load init page
data modify storage mc:data temp.current_element set from storage mc:data load.id
$data modify storage mc:data temp.current_page set value $(current_page)
execute at @s run function mc:main/gui/setup/pages/ with storage mc:data temp

##load order
scoreboard players set #mc.gui.sort.insert mc.data 0
function mc:main/inputs/check_interactions/gui/check_layer/sort/append with storage mc:data load
