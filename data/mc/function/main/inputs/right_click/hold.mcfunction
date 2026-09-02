scoreboard players add #mc.right_click mc.data 1

execute unless score #mc.looking_interaction mc.data matches 1 if score #mc.right_click mc.data matches 1 as @n[type=text_display,tag=mc.gui.current,tag=mc.gui.dragable,limit=1,distance=..5] run return run function mc:main/inputs/update_pos/set_drag

data modify storage mc:data current_action set from storage mc:data temp_current_action
data modify storage mc:data current_action[0].input set value "right_hold"
execute as @n[tag=mc.gui.current] run function mc:main/inputs/trigger/check/ with storage mc:data current_action[0]
