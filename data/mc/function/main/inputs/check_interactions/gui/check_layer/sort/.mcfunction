##sort newest
$execute store result score #mc.gui.sort mc.data run data get storage mc:data elements[{id:$(id)}].background.layer
scoreboard players set #mc.gui.sort.insert mc.data 0
function mc:main/inputs/check_interactions/gui/check_layer/sort/loop with storage mc:data temp.order[0]


