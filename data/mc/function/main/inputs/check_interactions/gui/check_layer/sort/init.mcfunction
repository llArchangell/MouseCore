data modify storage mc:data temp.order set from storage mc:data order

##get insertion
$data modify storage mc:data temp.insertion set value {id:$(id)}
$data remove storage mc:data temp.order[{id:$(id)}]
$data remove storage mc:data order[{id:$(id)}]

# ##depth init
$execute as @n[scores={mc.data=$(id)}] run function mc:main/gui/setup/set_depth/init {id:$(id)}

# ##sort
function mc:main/inputs/check_interactions/gui/check_layer/sort/ with storage mc:data temp.insertion

