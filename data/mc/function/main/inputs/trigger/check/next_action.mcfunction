say a
data remove storage mc:data current_action[0]
$data modify storage mc:data current_action[0].input set value $(input)
execute if data storage mc:data current_action[0] run function mc:main/inputs/trigger/check/ with storage mc:data current_action[0]
