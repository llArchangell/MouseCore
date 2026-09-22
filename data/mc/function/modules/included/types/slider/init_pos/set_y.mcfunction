$execute store result entity @s data.interaction[{id:$(target_id)}].y int 1 run scoreboard players get #mc.gui.drag.temp mc.data

##update slider pos
data modify storage mc:data temp.list set value []
$data modify storage mc:data temp.list append from entity @s data.interaction[{id:$(target_id)}]
$execute on passengers if entity @s[scores={mc.data=$(target_id)}] run function mc:main/gui/setup/set_translation/y with storage mc:data temp.list[0]

