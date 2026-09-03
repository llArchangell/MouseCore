##kill interactions boxes + texts
execute on passengers on passengers run kill @s
execute on passengers run kill @s

##set id
scoreboard players add #mc.interaction_id mc.data 1
scoreboard players operation @s mc.data = #mc.interaction_id mc.data
execute store result entity @s data.id int 1 run scoreboard players get @s mc.data

##set layer + window size
$scoreboard players set @s mc.gui_layer $(layer)
function mc:main/gui/setup/set_size with entity @s data

##create interactions
data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list set from entity @s data.interaction
execute if data storage mc:data temp.list[0] run function mc:main/gui/setup/load_interactions/ with storage mc:data temp.list[0].text

execute as @a on vehicle at @s as @n[type=text_display,tag=mc.gui.setup,limit=1,distance=..5] run function mc:main/inputs/update_pos/update_gui_pos with entity @s data


##debug
tellraw @a[tag=mc.dev] {text:"[Gui setup completed...]",color:green}