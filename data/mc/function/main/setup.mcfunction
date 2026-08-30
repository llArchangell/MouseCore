kill a1baddfe-1630-42e9-9d9c-2ef228025af8 
summon text_display ~ ~.60 ~ {\
    UUID:[I;-1581588994,372261609,-1650708750,671243000],\
    teleport_duration:1, \
}

execute as @n[tag=mc.input.main] rotated as @n[type=player] run rotate @s ~ 55
ride @s mount a1baddfe-1630-42e9-9d9c-2ef228025af8 

kill 3c69601e-49ad-44ce-b75b-44196417ede6
summon item_display ~ ~ ~ {\
UUID:[I;1013538846,1236092110,-1218755559,1679289830],\
item:\
    {\
        id:iron_sword,\
         \
        },\
teleport_duration:1,billboard:center,\
transformation:\
    {\
    left_rotation:[0f,0f,0f,1f],\
    right_rotation:[0f,0f,0f,1f],\
    scale:[.03f,.03f,.03f],\
    translation:[0.015f,-.013f,0f]\
    },\
    \
}

data modify storage mc:data input.mouse set value {x:0,y:0,z:.5,mode:"field",look_angle:10}

##get new_rot - old_rot
execute store result score #mc.input.rot_x mc.data run data get entity @s Rotation[0] 100
execute store result score #mc.input.rot_y mc.data run data get entity @s Rotation[1] 100
execute on vehicle store result score #mc.input.old_rot_x mc.data run data get entity @s Rotation[0] 100
execute on vehicle store result score #mc.input.old_rot_y mc.data run data get entity @s Rotation[1] 100

##reset scores
scoreboard players set #mc.input.x mc.data 0
scoreboard players set #mc.input.y mc.data 0

scoreboard players set #mc.input.old_rot_x mc.data 0
scoreboard players set #mc.input.old_rot_y mc.data 0

scoreboard players set #mc.input.strength_x mc.data 0
scoreboard players set #mc.input.strength_y mc.data 0
scoreboard players set #mc.input.strength mc.data 0

scoreboard players set #mc.input.diff_x mc.data 0
scoreboard players set #mc.input.diff_y mc.data 0
