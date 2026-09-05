
##sort newest
$execute store result score #mc.gui.sort mc.data run data get entity @n[type=text_display,tag=mc.gui,limit=1,distance=..5,scores={mc.data=$(id)}] data.layer
scoreboard players set #mc.gui.sort.insert mc.data 0
function mc:main/inputs/check_interactions/gui/check_layer/sort/loop with storage mc:data temp.order[0]



