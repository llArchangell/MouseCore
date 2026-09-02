scoreboard players set #mc.right_click mc.data 0
tag @n[type=text_display,tag=mc.gui.dragging,tag=mc.gui.dragable,limit=1,distance=..5] remove mc.gui.dragging


data modify storage mc:data current_action set from storage mc:data temp_current_action
data modify storage mc:data current_action[0].input set value "right_release"
execute as @n[tag=mc.gui.current] run function mc:main/inputs/trigger/check/ with storage mc:data current_action[0]
