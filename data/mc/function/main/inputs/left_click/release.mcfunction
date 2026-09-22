scoreboard players set #mc.left_click mc.data 0

##clear types
tag @n[type=text_display,limit=1,tag=mc.gui.dragging,distance=..2] remove mc.gui.dragging
tag @n[type=text_display,limit=1,tag=mc.gui.sliding,distance=..2] remove mc.gui.sliding

##check input
data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list set from storage mc:data current_action.action
data modify storage mc:data temp.list[0].input set value "left_release"
execute if data storage mc:data temp.list[0] run function mc:main/inputs/trigger/check/ with storage mc:data temp.list[0]