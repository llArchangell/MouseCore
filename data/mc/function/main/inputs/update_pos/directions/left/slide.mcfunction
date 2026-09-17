#direction check
execute if data storage mc:data temp.slide.direction{left:"none"} run return fail

##calcul new pos
$execute store result score #mc.gui.drag.temp mc.data run data get entity @s data.interaction[{id:$(target_id)}].x
scoreboard players operation #mc.gui.drag.temp mc.data += #mc.mouse.strength_x mc.data

##size limit
$execute store result score #mc.gui.temp.slide_size mc.data run data get entity @s data.interaction[{id:$(target_id)}].action[{type:slider}].x
execute if score #mc.gui.drag.temp mc.data > #mc.gui.temp.slide_size mc.data if score #mc.gui.slide.old_x mc.data >= #mc.gui.temp.slide_size mc.data run return fail
execute if score #mc.gui.drag.temp mc.data > #mc.gui.temp.slide_size mc.data run scoreboard players operation #mc.gui.drag.temp mc.data = #mc.gui.temp.slide_size mc.data
$execute store result entity @s data.interaction[{id:$(target_id)}].x int 1 run scoreboard players get #mc.gui.drag.temp mc.data

##update slider pos
data modify storage mc:data temp.list set value []
$data modify storage mc:data temp.list append from entity @s data.interaction[{id:$(target_id)}]
$execute on passengers if entity @s[scores={mc.data=$(target_id)}] run function mc:main/gui/setup/set_translation/x with storage mc:data temp.list[0]

##mouse
scoreboard players operation #mc.gui.drag.offset_x mc.data = #mc.gui.drag.temp mc.data
scoreboard players operation #mc.gui.drag.offset_x mc.data -= #mc.gui.drag.old_offset_x mc.data
scoreboard players operation #mc.mouse.x mc.data = #mc.gui.drag.offset_x mc.data
execute store result storage mc:data input.mouse.x float 0.001 run scoreboard players get #mc.mouse.x mc.data
function mc:main/inputs/check_interactions/ with storage mc:data input.mouse

scoreboard players operation #mc.gui.slide.old_x mc.data = #mc.gui.drag.temp mc.data

##size limit
$scoreboard players set #mc.gui.temp.slide_size mc.data -$(width)
$execute store result score #mc.gui.drag.temp_ mc.data run data get entity @s data.interaction[{id:$(target_id)}].action[{type:slider}].width
scoreboard players operation #mc.gui.temp.slide_size mc.data += #mc.gui.drag.temp_ mc.data
$execute store result score #mc.gui.drag.temp_ mc.data run data get entity @s data.interaction[{id:$(target_id)}].action[{type:slider}].x
scoreboard players operation #mc.gui.temp.slide_size mc.data += #mc.gui.drag.temp_ mc.data
execute if score #mc.gui.drag.temp mc.data < #mc.gui.temp.slide_size mc.data if score #mc.gui.slide.old_x mc.data <= #mc.gui.temp.slide_size mc.data run return fail
execute if score #mc.gui.drag.temp mc.data < #mc.gui.temp.slide_size mc.data run scoreboard players operation #mc.gui.drag.temp mc.data = #mc.gui.temp.slide_size mc.data
$execute store result entity @s data.interaction[{id:$(target_id)}].x int 1 run scoreboard players get #mc.gui.drag.temp mc.data

##snap
$execute store result score #mc.gui.slider.max mc.data run data get entity @s data.interaction[{id:$(target_id)}].action[{type:slider}].max_x
scoreboard players operation #mc.slider.percent mc.data = #mc.gui.slider.max mc.data
scoreboard players operation #mc.slider.percent mc.data *= #mc.gui.drag.temp mc.data
scoreboard players operation #mc.slider.percent mc.data /= #mc.gui.temp.slide_size mc.data
execute unless score #mc.slider.old_percent_x mc.data = #mc.slider.percent mc.data run function mc:main/gui/type/slider/action
scoreboard players operation #mc.slider.old_percent_x mc.data = #mc.slider.percent mc.data


# $function mc:main/gui/type/slider/action with entity @s data.interaction[{id:$(target_id)}].action[{type:slider}].direction.left

