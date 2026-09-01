execute as @e[type=text_display,tag=mc.gui.current,limit=3,distance=..5] run function mc:main/inputs/check_interactions/gui/clear
data modify entity 3c69601e-49ad-44ce-b75b-44196417ede6 text.color set value "white"

data modify storage mc:data temp set value {id:0,list:[]}
execute store result storage mc:data temp.id int 1 run scoreboard players operation #mc.temp mc.data > @e[tag=mc.gui] mc.data

function mc:main/inputs/check_interactions/gui/check_layer/loop with storage mc:data temp
 