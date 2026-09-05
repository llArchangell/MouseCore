##get layer of current element
$execute store result score #mc.gui.sort_ mc.data run data get entity @n[type=text_display,tag=mc.gui,limit=1,distance=..5,scores={mc.data=$(id)}] data.layer

##get score
execute if score #mc.gui.sort mc.data < #mc.gui.sort_ mc.data run scoreboard players add #mc.gui.sort.insert mc.data 1
execute if score #mc.gui.sort mc.data > #mc.gui.sort_ mc.data run scoreboard players remove #mc.gui.sort.insert mc.data 1

##next iteration
data remove storage mc:data temp.order[0]
execute if data storage mc:data temp.order[0] run return run function mc:main/inputs/check_interactions/gui/check_layer/sort/loop with storage mc:data temp.order[0]

##insert
execute if score #mc.gui.sort.insert mc.data matches ..-1 run scoreboard players set #mc.gui.sort.insert mc.data 0
execute store result storage mc:data temp.insertion.index int 1 run scoreboard players get #mc.gui.sort.insert mc.data
function mc:main/inputs/check_interactions/gui/check_layer/sort/insert with storage mc:data temp.insertion