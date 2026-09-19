
##create interactions
data modify storage mc:data temp.list set value []
data modify storage mc:data temp.set_id set value []
$data modify storage mc:data temp.set_id set from entity @s data.pages[$(current_page)].interaction

$data modify entity @s data.pages[$(current_page)].interaction set value []
function mc:main/gui/setup/pages/set_id with storage mc:data temp

tag @s add mc.gui.setup
execute at @s if data storage mc:data temp.list[0] run function mc:main/gui/setup/load_interactions/ with storage mc:data temp.list[0].text
tag @s remove mc.gui.setup

function mc:main/inputs/check_interactions/gui/check_layer/sort/append with entity @s data
