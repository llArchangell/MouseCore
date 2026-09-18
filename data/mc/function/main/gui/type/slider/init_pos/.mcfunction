data modify storage mc:data temp.slider_init set value []
data modify storage mc:data temp.slider_init set from entity @s data.interaction

execute if data storage mc:data temp.slider_init[0] run function mc:main/gui/type/slider/init_pos/loop with storage mc:data temp.slider_init[0]