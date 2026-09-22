execute if score #mc.left_click mc.data matches 1.. run return fail
scoreboard players add #mc.left_click mc.data 1

##check inputs
data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list set from storage mc:data current_action.action
data modify storage mc:data temp.list[0].input set value "left_hold"
execute if data storage mc:data temp.list[0] run function mc:main/inputs/trigger/check/ with storage mc:data temp.list[0]