execute on passengers run kill @s

$scoreboard players set @s mc.gui_layer $(layer)
function mc:main/gui/setup/set_size with entity @s data

data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list set from entity @s data.interaction
execute if data storage mc:data temp.list[0] run function mc:main/gui/setup/load_interactions/


tellraw @a {text:"[Gui setup completed...]",color:green}