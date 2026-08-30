$execute if entity @e[type=text_display,limit=1,scores={mc.data=$(id)},distance=..5] run function mc:main/inputs/check_interactions/gui/check_layer/loop with storage mc:data temp

