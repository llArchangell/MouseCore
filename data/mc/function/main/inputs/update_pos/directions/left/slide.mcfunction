# ##direction check
execute unless data storage mc:data current_action.action[{type:slider}].direction.left run return fail

##calcul new pos
execute store result score #mc.gui.drag.temp mc.data run data get storage mc:data current_action.background.x
scoreboard players operation #mc.gui.drag.temp mc.data -= #mc.mouse.strength_x mc.data

# ##size limit
scoreboard players operation #mc.gui.temp.slide_size mc.data = #mc.gui.slide.min_x mc.data
execute if score #mc.gui.slide.old_x mc.data <= #mc.gui.temp.slide_size mc.data if score #mc.gui.drag.temp mc.data <= #mc.gui.temp.slide_size mc.data run return fail 
execute if score #mc.gui.drag.temp mc.data < #mc.gui.temp.slide_size mc.data run scoreboard players operation #mc.gui.drag.temp mc.data = #mc.gui.temp.slide_size mc.data
execute store result storage mc:data current_action.background.x int 1 run scoreboard players get #mc.gui.drag.temp mc.data

##update slider pos
data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list append from storage mc:data current_action.background
$execute as @n[scores={mc.data=$(id)}] run function mc:main/gui/setup/set_translation/x with storage mc:data temp.list[0]

scoreboard players operation #mc.gui.slide.old_x mc.data = #mc.gui.drag.temp mc.data
function mc:modules/included/types/slider/save_new_data/ with storage mc:data temp 

##mouse
scoreboard players operation #mc.gui.drag.offset_x mc.data = #mc.gui.drag.temp mc.data
scoreboard players operation #mc.gui.drag.offset_x mc.data -= #mc.gui.drag.old_offset_x mc.data
scoreboard players operation #mc.gui.drag.offset_x mc.data *= #-1 mc.data
scoreboard players operation #mc.mouse.x mc.data = #mc.gui.drag.offset_x mc.data
execute store result storage mc:data input.mouse.x float 0.001 run scoreboard players get #mc.mouse.x mc.data
function mc:main/inputs/check_interactions/ with storage mc:data input.mouse

##action
data modify storage mc:data temp.axis set value "x"
data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list append from storage mc:data current_action.action[{type:slider}]
function mc:main/inputs/trigger/actions/ with storage mc:data temp.list[0]
