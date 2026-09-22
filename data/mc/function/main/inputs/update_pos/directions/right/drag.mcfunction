##gui
$execute store result score #mc.gui.screen_bounds.temp mc.data run data get storage mc:data elements[{id:$(id)}].background.width
scoreboard players operation #mc.gui.screen_bounds mc.data += #mc.gui.screen_bounds.temp mc.data

$execute store result score #mc.gui.drag.temp mc.data run data get storage mc:data elements[{id:$(id)}].background.origin_x
scoreboard players operation #mc.gui.drag.temp mc.data -= #mc.mouse.strength_x mc.data

execute if score #mc.gui.drag.temp mc.data <= #mc.gui.screen_bounds mc.data run scoreboard players operation #mc.gui.drag.temp mc.data = #mc.gui.screen_bounds mc.data

function mc:main/inputs/update_pos/drag/x with storage mc:data temp.set_drag

##mouse
scoreboard players operation #mc.gui.drag.offset_x mc.data = #mc.gui.drag.temp mc.data
scoreboard players operation #mc.gui.drag.offset_x mc.data -= #mc.gui.drag.old_offset_x mc.data
scoreboard players operation #mc.mouse.x mc.data = #mc.gui.drag.offset_x mc.data
execute store result storage mc:data input.mouse.x float 0.001 run scoreboard players get #mc.mouse.x mc.data
