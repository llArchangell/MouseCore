data modify storage mc:data gui.active_types set value {hover:false,button:false,slider:false,edge:false}

execute as @e[type=text_display,tag=mc.gui.current,limit=3,distance=..5] run function mc:main/inputs/check_interactions/gui/clear
execute as 3c69601e-49ad-44ce-b75b-44196417ede6 on passengers run data modify entity @s text.color set value "white"

data modify storage mc:data temp.order set from storage mc:data elements
function mc:main/inputs/check_interactions/gui/check_layer/loop with storage mc:data temp.order[0]


 