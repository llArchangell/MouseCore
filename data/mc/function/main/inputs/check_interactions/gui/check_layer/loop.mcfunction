$execute as @n[type=text_display,tag=mc.gui,scores={mc.data=$(id)},limit=1,distance=..5] run function mc:main/inputs/check_interactions/gui/check_menu/
data remove storage mc:data temp.order[0]
function mc:main/inputs/check_interactions/gui/check_layer/loop with storage mc:data temp.order[0]