scoreboard players add #mc.right_click mc.data 1
execute if score #mc.right_click mc.data matches 1 as @n[type=text_display,tag=mc.gui.current,tag=mc.gui.dragable,limit=1,distance=..5] run function mc:main/inputs/update_pos/set_drag
