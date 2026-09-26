
$execute store result score #mc.gui.slider.max_$(axis) mc.data run data get storage mc:data current_action.action[{type:slider}].height
$execute store result score #mc.gui.slider.$(axis) mc.data run data get storage mc:data current_action.background.$(axis)
$execute store result score #mc.gui.slider.max_value_$(axis) mc.data run data get storage mc:data current_action.action[{type:slider}].max_$(axis)

$scoreboard players operation #mc.gui.slider.value mc.data = #mc.gui.slider.$(axis) mc.data
$scoreboard players operation #mc.gui.slider.value mc.data *= #mc.gui.slider.max_value_$(axis) mc.data
$scoreboard players operation #mc.gui.slider.value mc.data /= #mc.gui.slider.max_$(axis) mc.data

$execute store result storage mc:data temp.$(returned_value) int 1 run scoreboard players get #mc.gui.slider.value mc.data
