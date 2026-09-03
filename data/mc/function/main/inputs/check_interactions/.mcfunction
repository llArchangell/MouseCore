##tp cursor to new pos, reset to base cursor
$tp 3c69601e-49ad-44ce-b75b-44196417ede6 ^$(x) ^$(y) ^$(z)

scoreboard players set #mc.looking_interaction mc.data 0
execute unless entity @e[type=text_display,tag=mc.gui.sliding,limit=1,distance=..5] unless entity @e[type=text_display,tag=mc.gui.dragging,limit=1,distance=..5] run function mc:main/inputs/check_interactions/gui/
execute if score #mc.looking_interaction mc.data matches 0 if score #mc.gui.hover_time mc.data matches 1.. run function mc:main/inputs/trigger/hover/clear

# $execute facing ^$(x) ^$(y) ^$(z) run function lce:player/inputs/mouse/get_looking/
