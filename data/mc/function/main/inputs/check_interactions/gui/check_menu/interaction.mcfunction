##get x origin
scoreboard players operation #mc.temp.gui mc.data = #mc.temp.gui.origin_x mc.data
$scoreboard players set #mc.temp.gui.x_offset mc.data $(x)
scoreboard players operation #mc.temp.gui mc.data -= #mc.temp.gui.x_offset mc.data

## min x
scoreboard players operation #mc.temp.gui.min_x mc.data = #mc.temp.gui mc.data
execute if score #mc.mouse.x mc.data > #mc.temp.gui.min_x mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction

## max x
scoreboard players operation #mc.temp.gui.max_x mc.data = #mc.temp.gui mc.data
$scoreboard players remove #mc.temp.gui.max_x mc.data $(width)
execute if score #mc.mouse.x mc.data < #mc.temp.gui.max_x mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction

##get y origin
scoreboard players operation #mc.temp.gui mc.data = #mc.temp.gui.origin_y mc.data
$scoreboard players set #mc.temp.gui.y_offset mc.data $(y)
scoreboard players operation #mc.temp.gui mc.data += #mc.temp.gui.y_offset mc.data

##get y min
scoreboard players operation #mc.temp.gui.min_y mc.data = #mc.temp.gui mc.data
execute if score #mc.mouse.y mc.data < #mc.temp.gui.min_y mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction

##get y max
scoreboard players operation #mc.temp.gui.max_y mc.data = #mc.temp.gui mc.data
$scoreboard players add #mc.temp.gui.max_y mc.data $(height)
execute if score #mc.mouse.y mc.data > #mc.temp.gui.max_y mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction

####found interaction
execute as 3c69601e-49ad-44ce-b75b-44196417ede6 on passengers run data modify entity @s text.color set value "gold"
data modify storage mc:data temp.current_element set from storage mc:data current_action.id
data modify storage mc:data current_action set from storage mc:data temp.list[0]

function mc:main/inputs/check_interactions/gui/highlight/set with storage mc:data current_action

# ##triggers = hover, edge,
# execute if data storage mc:data temp_current_action.actions[{type:"hover"}] run function mc:main/inputs/trigger/hover/

# data modify storage mc:data temp.list set value []
# data modify storage mc:data temp.list append from storage mc:data temp_current_action.actions[{type:"edge"}]
# execute if data storage mc:data temp_current_action.actions[{type:"edge"}] run function mc:main/inputs/trigger/edge/interaction with storage mc:data temp.list[0]
