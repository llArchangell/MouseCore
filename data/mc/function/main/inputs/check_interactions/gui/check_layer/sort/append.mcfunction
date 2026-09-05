##set init
$execute unless data storage mc:data temp.elements[0] run return run data modify storage mc:data temp.elements append value {id:$(id)}

##get insertion
$data modify storage mc:data temp.insertion set value {id:$(id)}
$data remove storage mc:data temp.elements[{id:$(id)}]
$execute unless data storage mc:data temp.elements[0] run return run data modify storage mc:data temp.elements append value {id:$(id)}
$scoreboard players set @s mc.data $(id)

##sort
data modify storage mc:data temp.order set from storage mc:data temp.elements
function mc:main/inputs/check_interactions/gui/check_layer/sort/ with storage mc:data temp.insertion
