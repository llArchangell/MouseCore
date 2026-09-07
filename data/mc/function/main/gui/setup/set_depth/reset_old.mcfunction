$execute store result score #mc.temp.gui.set_depth mc.data run data get entity @n[scores={mc.data=$(id)}] data.depth

execute store result entity @s transformation.translation[2] float 0.000001 run scoreboard players get #mc.temp.gui.set_depth mc.data
execute on passengers store result entity @s transformation.translation[2] float 0.000001 run scoreboard players get #mc.temp.gui.set_depth mc.data
execute on passengers on passengers store result entity @s transformation.translation[2] float 0.000001 run scoreboard players get #mc.temp.gui.set_depth mc.data
