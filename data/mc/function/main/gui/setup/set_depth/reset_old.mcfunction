
execute store result score #mc.temp.gui.set_depth mc.data run data get entity @s data.depth 1000
scoreboard players set #mc.temp.gui.set_depth mc.data 0
execute store result entity @s transformation.translation[2] float 0.0000001 run scoreboard players get #mc.temp.gui.set_depth mc.data

scoreboard players add #mc.temp.gui.set_depth mc.data 1000
execute on passengers store result entity @s transformation.translation[2] float 0.0000000001 run scoreboard players get #mc.temp.gui.set_depth mc.data

scoreboard players add #mc.temp.gui.set_depth mc.data 1000
execute on passengers on passengers store result entity @s transformation.translation[2] float 0.0000000001 run scoreboard players get #mc.temp.gui.set_depth mc.data
