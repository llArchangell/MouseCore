data modify storage mc:data temp.slider_init set value []
data modify storage mc:data temp.slider_init set from entity @s data.interaction

execute if data storage mc:data temp.slider_init[0] run function mc:main/gui/type/slider/init_pos/loop with storage mc:data temp.slider_init[0]

execute store result score #mc.init_page mc.data run data get entity @s data.pages
execute store result storage mc:data temp.load_page int 1 run scoreboard players remove #mc.init_page mc.data 1

function mc:modules/included/actions/pages/update with storage mc:data temp