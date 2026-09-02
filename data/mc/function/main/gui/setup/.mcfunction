##kill interactions boxes + texts
execute on passengers on passengers run kill @s
execute on passengers run kill @s

##set layer + window size
$scoreboard players set @s mc.gui_layer $(layer)
function mc:main/gui/setup/set_size with entity @s data

##create interactions
scoreboard players set #mc.interaction_id mc.data 0

data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list set from entity @s data.interaction
execute if data storage mc:data temp.list[0] run function mc:main/gui/setup/load_interactions/ with storage mc:data temp.list[0].text

##debug
tellraw @a[tag=mc.dev] {text:"[Gui setup completed...]",color:green}