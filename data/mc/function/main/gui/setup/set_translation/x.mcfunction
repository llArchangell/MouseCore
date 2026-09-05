$scoreboard players set #mc.gui.set_size.temp mc.data $(x)
scoreboard players set #mc.gui.set_size mc.data 1000
scoreboard players operation #mc.gui.set_size mc.data *= #mc.gui.set_size.temp mc.data
execute if score #mc.gui.set_size.temp mc.data matches ..-1 run scoreboard players operation #mc.gui.set_size mc.data *= #-1 mc.data
execute store result entity @s transformation.translation[0] float 0.000001 run scoreboard players get #mc.gui.set_size mc.data
