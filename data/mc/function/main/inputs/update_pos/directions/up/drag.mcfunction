##gui
$execute store result score #mc.gui.screen_bounds.temp mc.data run data get storage mc:data elements[{id:$(id)}].background.height
scoreboard players operation #mc.gui.screen_bounds mc.data -= #mc.gui.screen_bounds.temp mc.data


$execute store result score #mc.gui.drag.temp mc.data run data get storage mc:data elements[{id:$(id)}].background.origin_y
scoreboard players operation #mc.gui.drag.temp mc.data += #mc.mouse.strength_y mc.data

execute if score #mc.gui.drag.temp mc.data >= #mc.gui.screen_bounds mc.data run scoreboard players operation #mc.gui.drag.temp mc.data = #mc.gui.screen_bounds mc.data

function mc:main/inputs/update_pos/drag/y with storage mc:data temp.set_drag

##mouse
scoreboard players operation #mc.gui.drag.offset_y mc.data = #mc.gui.drag.temp mc.data
scoreboard players operation #mc.gui.drag.offset_y mc.data -= #mc.gui.drag.old_offset_y mc.data
scoreboard players operation #mc.mouse.y mc.data = #mc.gui.drag.offset_y mc.data
execute store result storage mc:data input.mouse.y float 0.001 run scoreboard players get #mc.mouse.y mc.data
