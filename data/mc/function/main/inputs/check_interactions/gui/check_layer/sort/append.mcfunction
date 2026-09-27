data modify storage mc:data order set value []
data modify storage mc:data order set from storage mc:data elements

$execute if data storage mc:data order[1] run function mc:main/inputs/check_interactions/gui/check_layer/sort/init {id:$(id)}

data modify storage mc:data elements set from storage mc:data order



