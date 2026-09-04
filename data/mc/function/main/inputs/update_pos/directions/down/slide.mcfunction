##direction check
execute unless data storage mc:data temp.slide{direction:{down:true}} run return fail

##calcul new pos
$execute store result score #mc.gui.drag.temp mc.data run data get entity @s data.interaction[{id:$(target_id)}].y
scoreboard players operation #mc.gui.drag.temp mc.data -= #mc.mouse.strength_y mc.data

##size limit
execute if score #mc.gui.drag.temp mc.data matches ..-1 run scoreboard players set #mc.gui.drag.temp mc.data 0
$execute store result entity @s data.interaction[{id:$(target_id)}].y int 1 run scoreboard players get #mc.gui.drag.temp mc.data

##update slider pos
data modify storage mc:data temp.list set value []
$data modify storage mc:data temp.list append from entity @s data.interaction[{id:$(target_id)}]
execute on passengers run tag @s add mc.gui.interaction_setup
$execute on passengers if entity @s[scores={mc.data=$(target_id)}] run function mc:main/gui/setup/set_size with storage mc:data temp.list[0]

##mouse
scoreboard players operation #mc.gui.drag.offset_y mc.data = #mc.gui.drag.temp mc.data
scoreboard players operation #mc.gui.drag.offset_y mc.data -= #mc.gui.drag.old_offset_y mc.data
scoreboard players operation #mc.mouse.y mc.data = #mc.gui.drag.offset_y mc.data
execute store result storage mc:data input.mouse.y float 0.001 run scoreboard players get #mc.mouse.y mc.data
function mc:main/inputs/check_interactions/ with storage mc:data input.mouse