
##unique id
scoreboard players operation @s mc.data = #mc.interaction_id mc.data

##set if hover
execute if score #mc.gui.setting_hover mc.data matches 1 run function mc:main/inputs/trigger/hover/set

##set size
$data modify entity @s transformation.translation[2] set value 0.000$(depth)f

$scoreboard players set #mc.gui.set_size.temp mc.data $(width)
scoreboard players set #mc.gui.set_size mc.data 40
scoreboard players operation #mc.gui.set_size mc.data *= #mc.gui.set_size.temp mc.data
execute store result entity @s transformation.scale[0] float 0.001 run scoreboard players get #mc.gui.set_size mc.data

$scoreboard players set #mc.gui.set_size.temp mc.data $(height)
scoreboard players set #mc.gui.set_size mc.data 40
scoreboard players operation #mc.gui.set_size mc.data *= #mc.gui.set_size.temp mc.data
execute store result entity @s transformation.scale[1] float 0.001 run scoreboard players get #mc.gui.set_size mc.data

execute unless entity @s[tag=mc.gui.interaction_setup] run return fail

$scoreboard players set #mc.gui.set_size.temp mc.data $(x)
scoreboard players set #mc.gui.set_size mc.data 1000
scoreboard players operation #mc.gui.set_size mc.data *= #mc.gui.set_size.temp mc.data
execute if score #mc.gui.set_size.temp mc.data matches ..-1 run scoreboard players operation #mc.gui.set_size mc.data *= #-1 mc.data
execute store result entity @s transformation.translation[0] float 0.000001 run scoreboard players get #mc.gui.set_size mc.data

$scoreboard players set #mc.gui.set_size.temp mc.data $(y)
scoreboard players set #mc.gui.set_size mc.data 1000
scoreboard players operation #mc.gui.set_size mc.data *= #mc.gui.set_size.temp mc.data
execute if score #mc.gui.set_size.temp mc.data matches ..-1 run scoreboard players operation #mc.gui.set_size mc.data *= #-1 mc.data
execute store result entity @s transformation.translation[1] float 0.000001 run scoreboard players get #mc.gui.set_size mc.data

execute if score #mc.gui.setting_hover mc.data matches 0 run ride @s mount @n[tag=mc.gui.setup]
execute if score #mc.gui.setting_hover mc.data matches 1 run ride @s mount @n[tag=mc.gui.current]

tag @s remove mc.gui.interaction_setup

execute on passengers run function mc:main/gui/setup/set_text with storage mc:data temp.list[0].text