scoreboard players add #mc.interaction_id mc.data 1
execute store result storage mc:data temp.set_id[0].id int 1 run scoreboard players get #mc.interaction_id mc.data
data modify storage mc:data temp.list append from storage mc:data temp.set_id[0]
data modify entity @s data.interaction append from storage mc:data temp.set_id[0]

data remove storage mc:data temp.set_id[0]
execute if data storage mc:data temp.set_id[0] run function mc:main/gui/setup/load_interactions/set_id/
