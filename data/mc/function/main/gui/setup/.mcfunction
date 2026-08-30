$scoreboard players set @s mc.gui_layer $(layer)

function mc:main/gui/setup/set_size with entity @s data





















tellraw @a {text:"[Gui setup completed...]",color:green}