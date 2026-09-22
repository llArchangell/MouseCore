tag @s add mc.gui.sliding

execute store result score #mc.gui.drag.old_offset_x mc.data run data get storage mc:data current_action.background.x
execute store result score #mc.gui.drag.old_offset_y mc.data run data get storage mc:data current_action.background.y
scoreboard players operation #mc.gui.drag.old_offset_x mc.data += #mc.mouse.x mc.data
scoreboard players operation #mc.gui.drag.old_offset_y mc.data -= #mc.mouse.y mc.data

##get min x
execute store result score #mc.gui.slide.min_x mc.data run data get storage mc:data current_action.action[{type:slider}].x

##get max x
execute store result score #mc.gui.slide.width_offset mc.data run data get storage mc:data current_action.action[{type:slider}].width
scoreboard players operation #mc.gui.slide.max_x mc.data = #mc.gui.slide.width_offset mc.data

##get min y
execute store result score #mc.gui.slide.min_y mc.data run data get storage mc:data current_action.action[{type:slider}].y

##get max y
execute store result score #mc.gui.slide.height_offset mc.data run data get storage mc:data current_action.action[{type:slider}].height
scoreboard players operation #mc.gui.slide.max_y mc.data = #mc.gui.slide.height_offset mc.data
