##x placement
execute store result score #mc.gui.drag.temp mc.data run data get storage mc:data load.background.origin_x
execute store result storage mc:data load.background.origin_x int 1 run scoreboard players get #mc.gui.drag.temp mc.data
execute store result storage mc:data load.background.x float 0.001 run scoreboard players get #mc.gui.drag.temp mc.data

##y placement
execute store result score #mc.gui.drag.temp mc.data run data get storage mc:data load.background.origin_y
execute store result storage mc:data load.background.origin_y int 1 run scoreboard players get #mc.gui.drag.temp mc.data
execute store result storage mc:data load.background.y float 0.001 run scoreboard players get #mc.gui.drag.temp mc.data

##setup
function mc:main/inputs/update_pos/update_gui_pos with storage mc:data load.background
