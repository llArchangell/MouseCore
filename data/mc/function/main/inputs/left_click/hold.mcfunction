scoreboard players add #mc.left_click mc.data 1

data modify storage mc:data current_action set from storage mc:data temp_current_action.actions
data modify storage mc:data current_action[0].input set value "left_hold"
execute if score #mc.left_click mc.data matches 1 as @n[tag=mc.gui.current] run function mc:main/inputs/trigger/check/ with storage mc:data current_action[0]
