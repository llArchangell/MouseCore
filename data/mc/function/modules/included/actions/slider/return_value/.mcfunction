
$execute store result storage mc:data temp.$(axis)_value_old int 1 run scoreboard players get #mc.gui.new_page mc.data
scoreboard players operation #mc.gui.old_page mc.data = #mc.gui.new_page mc.data

$execute store result score #mc.gui.slider.max_$(axis) mc.data run data get storage mc:data current_action.action[{type:slider}].height
$execute store result score #mc.gui.slider.$(axis) mc.data run data get storage mc:data current_action.background.$(axis)
$execute store result score #mc.gui.slider.max_value_$(axis) mc.data run data get storage mc:data current_action.action[{type:slider}].max_$(axis)

$scoreboard players operation #mc.gui.slider.value mc.data = #mc.gui.slider.$(axis) mc.data
$scoreboard players operation #mc.gui.slider.value mc.data *= #mc.gui.slider.max_value_$(axis) mc.data
$scoreboard players operation #mc.gui.slider.value mc.data /= #mc.gui.slider.max_$(axis) mc.data

$execute store result storage mc:data temp.$(axis)_value int 1 run scoreboard players get #mc.gui.slider.value mc.data
scoreboard players operation #mc.gui.new_page mc.data = #mc.gui.slider.value mc.data
