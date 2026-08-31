execute as @n[type=text_display,tag=lce.gui.current,limit=1,distance=..5] run return fail

function mc:main/inputs/check_interactions/gui/check_menu/loop with entity @s data

execute unless entity @s[tag=mc.gui.current] run return fail

scoreboard players set #mc.looking_interaction mc.data 0
data modify storage mc:data temp.list set from entity @s data.interaction
execute if data storage mc:data temp.list[0] run function mc:main/inputs/check_interactions/gui/check_menu/interaction with storage mc:data temp.list[0]