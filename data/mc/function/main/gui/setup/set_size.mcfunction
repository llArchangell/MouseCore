$scoreboard players set #mc.gui.set_size.temp mc.data $(width)
scoreboard players set #mc.gui.set_size mc.data 40
scoreboard players operation #mc.gui.set_size mc.data *= #mc.gui.set_size.temp mc.data
execute store result entity @s transformation.scale[0] float 0.001 run scoreboard players get #mc.gui.set_size mc.data

$scoreboard players set #mc.gui.set_size.temp mc.data $(height)
scoreboard players set #mc.gui.set_size mc.data 40
scoreboard players operation #mc.gui.set_size mc.data *= #mc.gui.set_size.temp mc.data
execute store result entity @s transformation.scale[1] float 0.001 run scoreboard players get #mc.gui.set_size mc.data
