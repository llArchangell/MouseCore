##tp cursor to new pos, reset to base cursor
data modify entity 3c69601e-49ad-44ce-b75b-44196417ede6 item.id set value "iron_sword"
$tp 3c69601e-49ad-44ce-b75b-44196417ede6 ^$(x) ^$(y) ^$(z)

# ##get gui elements
# execute as @n[tag=lce.gui.current] on passengers run data modify entity @s text.color set value white
# tag @e[tag=lce.gui.current,limit=10,distance=..50,type=text_display] remove lce.gui.current
# execute unless entity @e[tag=lce.gui.dragable.current,limit=1,type=text_display,distance=..25] run function lce:main/gui/get_elements/look/

# $execute facing ^$(x) ^$(y) ^$(z) run function lce:player/inputs/mouse/get_looking/
