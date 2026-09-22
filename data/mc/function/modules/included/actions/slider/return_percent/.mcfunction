# ##snap
# $execute store result score #mc.gui.slider.max mc.data run data get entity @s data.interaction[{id:$(target_id)}].action[{type:slider}].max_y
# scoreboard players operation #mc.slider.percent mc.data = #mc.gui.slider.max mc.data
# scoreboard players operation #mc.slider.percent mc.data *= #mc.gui.drag.temp mc.data
# scoreboard players operation #mc.slider.percent mc.data /= #mc.gui.temp.slide_size mc.data
# $execute unless score #mc.slider.old_percent_y mc.data = #mc.slider.percent mc.data run function mc:main/gui/type/slider/action with entity @s data.interaction[{id:$(target_id)}].action[{type:slider}].direction.up
# scoreboard players operation #mc.slider.old_percent_y mc.data = #mc.slider.percent mc.data

