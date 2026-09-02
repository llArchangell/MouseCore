##get x origin
scoreboard players operation #mc.temp.gui mc.data = #mc.temp.gui.min_x mc.data
$scoreboard players set #mc.temp.gui.x_offset mc.data $(x)
scoreboard players operation #mc.temp.gui mc.data += #mc.temp.gui.x_offset mc.data

##get x min,max
scoreboard players operation #mc.temp.gui.min_x mc.data = #mc.temp.gui mc.data
execute if score #mc.mouse.x mc.data > #mc.temp.gui.min_x mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction

scoreboard players operation #mc.temp.gui.max_x mc.data = #mc.temp.gui mc.data
$scoreboard players remove #mc.temp.gui.max_x mc.data $(width)
execute if score #mc.mouse.x mc.data < #mc.temp.gui.max_x mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction


##get y origin
scoreboard players operation #mc.temp.gui mc.data = #mc.temp.gui.min_y mc.data
$scoreboard players set #mc.temp.gui.y_offset mc.data $(y)
scoreboard players operation #mc.temp.gui mc.data += #mc.temp.gui.y_offset mc.data

##get x min,max
scoreboard players operation #mc.temp.gui.min_y mc.data = #mc.temp.gui mc.data
execute if score #mc.mouse.y mc.data < #mc.temp.gui.min_y mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction

scoreboard players operation #mc.temp.gui.max_y mc.data = #mc.temp.gui mc.data
$scoreboard players add #mc.temp.gui.max_y mc.data $(height)
execute if score #mc.mouse.y mc.data > #mc.temp.gui.max_y mc.data run return run function mc:main/inputs/check_interactions/gui/check_menu/next_interaction

##set as current selected interaction
data modify entity 3c69601e-49ad-44ce-b75b-44196417ede6 text.color set value "gold"
execute on passengers on passengers run data modify entity @s text.color set value gold
scoreboard players set #mc.looking_interaction mc.data 1
data modify storage mc:data temp_current_action set from storage mc:data temp.list[0].action