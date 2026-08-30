##tp cursor to new pos, reset to base cursor
$tp 3c69601e-49ad-44ce-b75b-44196417ede6 ^$(x) ^$(y) ^$(z)

execute unless entity @e[type=text_display,tag=mc.gui.dragging,limit=1,distance=..5] run function mc:main/inputs/check_interactions/gui/

# $execute facing ^$(x) ^$(y) ^$(z) run function lce:player/inputs/mouse/get_looking/
