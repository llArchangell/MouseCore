
$execute if data storage mc:data temp.list[0].trigger{$(input):true} run function mc:main/inputs/trigger/check/type with storage mc:data temp.list[0]

data remove storage mc:data temp.list[0]
$data modify storage mc:data temp.list[0].action.input set value "$(input)"
execute if data storage mc:data temp.list[0] run function mc:main/inputs/trigger/check/ with storage mc:data temp.list[0]

