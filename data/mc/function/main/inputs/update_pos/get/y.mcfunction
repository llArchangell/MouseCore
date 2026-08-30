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
scoreboard players operation #mc.mouse.strength mc.data = #mc.mouse.diff_y mc.data
execute if score #mc.mouse.strength mc.data matches ..-1 run scoreboard players operation #mc.mouse.strength mc.data *= #-1 mc.data

execute if score #mc.mouse.diff_y mc.data matches ..-1 run return run say up
execute if score #mc.mouse.diff_y mc.data matches 1.. run return run say down
