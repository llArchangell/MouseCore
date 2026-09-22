# get_scores
scoreboard players operation #mc.mouse.diff_y mc.data = #mc.mouse.rot_y mc.data
scoreboard players operation #mc.mouse.diff_y mc.data -= #mc.mouse.old_rot_y mc.data

# wrap into -18000..18000 so minecraft don't fuck up with my system
scoreboard players add #mc.mouse.diff_y mc.data 18000
scoreboard players operation #mc.mouse.diff_y mc.data %= #36000 mc.data
scoreboard players add #mc.mouse.diff_y mc.data 36000
scoreboard players operation #mc.mouse.diff_y mc.data %= #36000 mc.data
scoreboard players remove #mc.mouse.diff_y mc.data 18000

#get mouse strength
scoreboard players operation #mc.mouse.strength_y mc.data = #mc.mouse.diff_y mc.data
execute if score #mc.mouse.strength_y mc.data matches ..-1 run scoreboard players operation #mc.mouse.strength_y mc.data *= #-1 mc.data

execute unless data storage mc:data temp.set_drag run data modify storage mc:data temp.set_drag set value {id:0}
execute if score #mc.mouse.diff_y mc.data matches ..-1 run return run function mc:main/inputs/update_pos/directions/up/ with storage mc:data temp.set_drag
execute if score #mc.mouse.diff_y mc.data matches 1.. run return run function mc:main/inputs/update_pos/directions/down/ with storage mc:data temp.set_drag
