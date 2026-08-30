# get_scores
scoreboard players operation #mc.mouse.diff_x mc.data = #mc.mouse.rot_x mc.data
scoreboard players operation #mc.mouse.diff_x mc.data -= #mc.mouse.old_rot_x mc.data

# wrap into -18000..18000 so minecraft don't fuck up with my system
scoreboard players add #mc.mouse.diff_x mc.data 18000
scoreboard players operation #mc.mouse.diff_x mc.data %= #36000 mc.data
scoreboard players add #mc.mouse.diff_x mc.data 36000
scoreboard players operation #mc.mouse.diff_x mc.data %= #36000 mc.data
scoreboard players remove #mc.mouse.diff_x mc.data 18000

#get mouse strength
scoreboard players operation #mc.mouse.strength_x mc.data = #mc.mouse.diff_x mc.data
execute if score #mc.mouse.strength_x mc.data matches ..-1 run scoreboard players operation #mc.mouse.strength_x mc.data *= #-1 mc.data

execute if score #mc.mouse.diff_x mc.data matches ..-1 run return run function mc:main/inputs/update_pos/directions/left/
execute if score #mc.mouse.diff_x mc.data matches 1.. run return run function mc:main/inputs/update_pos/directions/right/
