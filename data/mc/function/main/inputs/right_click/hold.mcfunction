execute if score #mc.right_click mc.data matches 1.. run return fail
scoreboard players add #mc.right_click mc.data 1

##drag check
execute if data storage mc:data current_action{type:"main"} as @n[type=text_display,limit=1,tag=mc.gui.current,distance=..2] run return run function mc:main/inputs/update_pos/set_drag with storage mc:data current_action

##input check
data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list set from storage mc:data current_action.action
data modify storage mc:data temp.list[0].input set value "right_hold"
execute if data storage mc:data temp.list[0] run function mc:main/inputs/trigger/check/ with storage mc:data temp.list[0]