
##get ui size
$scoreboard players set #mc.temp.gui mc.data $(origin_x)
scoreboard players operation #mc.temp.gui.old_x mc.data = #mc.temp.gui mc.data

$scoreboard players set #mc.temp.gui.min_x mc.data $(origin_x)
execute if score #mc.mouse.x mc.data > #mc.temp.gui.min_x mc.data run return fail

scoreboard players operation #mc.temp.gui.max_x mc.data = #mc.temp.gui mc.data 
$scoreboard players remove #mc.temp.gui.max_x mc.data $(width)
execute if score #mc.mouse.x mc.data < #mc.temp.gui.max_x mc.data run return fail


$scoreboard players set #mc.temp.gui mc.data $(origin_y)
scoreboard players operation #mc.temp.gui.min_y mc.data = #mc.temp.gui mc.data 
execute if score #mc.mouse.y mc.data < #mc.temp.gui.min_y mc.data run return fail

scoreboard players operation #mc.temp.gui.max_y mc.data = #mc.temp.gui mc.data 
$scoreboard players add #mc.temp.gui.max_y mc.data $(height)
execute if score #mc.mouse.y mc.data > #mc.temp.gui.max_y mc.data run return fail

########found menu
data modify storage mc:data current_action set from storage mc:data temp.order[0]
execute as 3c69601e-49ad-44ce-b75b-44196417ede6 on passengers run data modify entity @s text.color set value "aqua"
tag @s add mc.gui.current


scoreboard players operation #mc.temp.gui.origin_x mc.data = #mc.temp.gui.min_x mc.data
scoreboard players operation #mc.temp.gui.origin_y mc.data = #mc.temp.gui.min_y mc.data