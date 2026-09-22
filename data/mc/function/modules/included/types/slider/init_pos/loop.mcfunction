data modify entity @s data.target_id set from storage mc:data temp.slider_init[0].id
execute if data storage mc:data temp.slider_init[0].action[{type:"slider"}] run function mc:main/gui/type/slider/init_pos/x with storage mc:data temp.slider_init[0].action[{type:"slider"}]
execute if data storage mc:data temp.slider_init[0].action[{type:"slider"}] run function mc:main/gui/type/slider/init_pos/y with storage mc:data temp.slider_init[0].action[{type:"slider"}]

data remove storage mc:data temp.slider_init[0]
execute if data storage mc:data temp.slider_init[0] run function mc:main/gui/type/slider/init_pos/loop with storage mc:data temp.slider_init[0]
