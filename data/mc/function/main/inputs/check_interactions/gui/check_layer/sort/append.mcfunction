##get insertion
$data modify storage mc:data temp.insertion set value {id:$(id)}
$data remove storage mc:data temp.elements[{id:$(id)}]

##depth init
$execute as @n[scores={mc.data=$(id)}] run function mc:main/gui/setup/set_depth/init

##setup loop / return if only one element
$execute unless data storage mc:data temp.elements[0] run return run data modify storage mc:data temp.elements append value {id:$(id)}
$scoreboard players set @s mc.data $(id)

##sort
data modify storage mc:data temp.order set from storage mc:data temp.elements
function mc:main/inputs/check_interactions/gui/check_layer/sort/ with storage mc:data temp.insertion

