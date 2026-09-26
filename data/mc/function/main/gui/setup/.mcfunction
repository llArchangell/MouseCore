##load main entity
function mc:main/gui/setup/background with storage mc:data load.background

##load interactions + their texts
tag @s add mc.gui.setup
execute at @s run function mc:main/gui/setup/load_interactions/init
tag @s remove mc.gui.setup


scoreboard players set #mc.gui.sort.insert mc.data 0
function mc:main/inputs/check_interactions/gui/check_layer/sort/append with storage mc:data load

##add loaded element to element list [temp]
data modify storage mc:data elements append from storage mc:data load


execute store result storage mc:data temp.current_element int 1 run scoreboard players get @s mc.data
$data modify storage mc:data temp.current_page set value $(current_page)
execute at @s run function mc:main/gui/setup/pages/ with storage mc:data temp