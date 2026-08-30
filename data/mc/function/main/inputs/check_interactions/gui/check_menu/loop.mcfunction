
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


title @a[limit=1,tag=mc.dev] actionbar {text:"[Found menu]",color:gold}
tag @s add mc.gui.current
data modify entity 3c69601e-49ad-44ce-b75b-44196417ede6 item.id set value "diamond_sword"