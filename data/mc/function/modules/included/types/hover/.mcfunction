
scoreboard players add #mc.gui.hover_time mc.data 1
$execute if score #mc.gui.hover_time mc.data matches $(load_timer) run return run function mc:modules/included/types/hover/init with storage mc:data temp
