# ##tp vehicle on itself to fix its rotation
execute on vehicle at @s run tp @s ~ ~ ~

# ##check mouse release
# execute unless predicate mc:inputs/left_click if score #mc.mouse.left_click mc.data matches 1.. run function mc:player/inputs/mouse/inputs/left_click/release
# execute unless predicate mc:inputs/right_click if score #mc.mouse.right_click mc.data matches 1.. run function mc:player/inputs/mouse/inputs/right_click/release

##get player_rot
execute on vehicle store result score #mc.mouse.old_rot_x mc.data run data get entity @s Rotation[0] 100
execute on vehicle store result score #mc.mouse.old_rot_y mc.data run data get entity @s Rotation[1] 100

##get vehicle rot
execute store result score #mc.mouse.rot_x mc.data run data get entity @s Rotation[0] 100
execute store result score #mc.mouse.rot_y mc.data run data get entity @s Rotation[1] 100

# ##if different, get x/y delta
execute unless score #mc.mouse.rot_x mc.data = #mc.mouse.old_rot_x mc.data run function mc:main/inputs/update_pos/get/x with storage mc:data.mouse
execute unless score #mc.mouse.rot_y mc.data = #mc.mouse.old_rot_y mc.data run function mc:main/inputs/update_pos/get/y with storage mc:data.mouse

##update cursor + get gui elements
execute on vehicle at @s positioned ^ ^ ^ run function mc:main/inputs/check_interactions/ with storage mc:data input.mouse
execute on vehicle at @s on passengers run rotate @s ~ ~

title @s actionbar [{text:"[X: ",color:green},{score:{name:"#mc.mouse.x",objective:"mc.data"}},{text:" ] [Y: ",color:green},{score:{name:"#mc.mouse.y",objective:"mc.data"}},{text:" ]",color:green}]

# ##check mouse inputs
# execute if predicate mc:inputs/left_click run return run function mc:player/inputs/mouse/inputs/left_click/
# execute if predicate mc:inputs/right_click run return run function mc:player/inputs/mouse/inputs/right_click/
