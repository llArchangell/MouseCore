execute if entity @e[tag=mc.gui.current,limit=1,distance=..5,type=text_display] run return fail

$execute as @e[type=text_display,tag=mc.gui,scores={mc.data=$(id)},limit=10,distance=..5] run function mc:main/inputs/check_interactions/gui/check_menu/

execute store result storage mc:data temp.id int 1 run scoreboard players remove #mc.temp mc.data 1
function mc:main/inputs/check_interactions/gui/check_layer/next with storage mc:data temp