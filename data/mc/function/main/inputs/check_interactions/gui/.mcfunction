data modify storage mc:data gui.active_types set value {hover:false,button:false,slider:false,edge:false}

execute as @e[type=text_display,tag=mc.gui.current,limit=3,distance=..5] run function mc:main/inputs/check_interactions/gui/clear
data modify entity 3c69601e-49ad-44ce-b75b-44196417ede6 text.color set value "white"

data modify storage mc:data temp.id set value 0
data modify storage mc:data temp.list set value []

execute store result storage mc:data temp.id int 1 run scoreboard players operation #mc.temp mc.data > @e[type=text_display,tag=mc.gui,distance=..5,limit=50] mc.data

function mc:main/inputs/check_interactions/gui/check_layer/loop with storage mc:data temp
 