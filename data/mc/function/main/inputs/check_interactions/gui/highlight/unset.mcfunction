$execute as @n[type=text_display,limit=1,scores={mc.data=$(id)},distance=..2] on passengers run function mc:main/inputs/check_interactions/gui/highlight/remove with storage mc:data current_action.text
$execute as @n[type=text_display,limit=1,scores={mc.data=$(id)},distance=..2] run function mc:main/inputs/check_interactions/gui/highlight/remove with storage mc:data current_action.background
