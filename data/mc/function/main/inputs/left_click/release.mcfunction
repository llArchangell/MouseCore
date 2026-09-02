scoreboard players set #mc.left_click mc.data 0

data modify storage mc:data current_action set from storage mc:data temp_current_action
data modify storage mc:data current_action[0].input set value "left_release"
execute as @n[tag=mc.gui.current] run function mc:main/inputs/trigger/check/ with storage mc:data current_action[0]
