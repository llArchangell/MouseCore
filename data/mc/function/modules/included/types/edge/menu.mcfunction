$scoreboard players set #mc.temp.gui mc.data $(origin_x)
scoreboard players operation #mc.temp.gui.min_x mc.data = #mc.temp.gui mc.data
$scoreboard players remove #mc.temp.gui.min_x mc.data $(edge_margin)
execute unless score #mc.mouse.x mc.data < #mc.temp.gui.min_x mc.data run return run function mc:main/inputs/trigger/edge/found {side:left}

scoreboard players operation #mc.temp.gui.max_x mc.data = #mc.temp.gui mc.data
$scoreboard players remove #mc.temp.gui.max_x mc.data $(width)
$scoreboard players add #mc.temp.gui.max_x mc.data $(edge_margin)
execute unless score #mc.mouse.x mc.data > #mc.temp.gui.max_x mc.data run return run function mc:main/inputs/trigger/edge/found {side:right}

$scoreboard players set #mc.temp.gui mc.data $(origin_y)
scoreboard players operation #mc.temp.gui.min_y mc.data = #mc.temp.gui mc.data
$scoreboard players add #mc.temp.gui.min_y mc.data $(edge_margin)
execute unless score #mc.mouse.y mc.data > #mc.temp.gui.min_y mc.data run return run function mc:main/inputs/trigger/edge/found {side:down}

scoreboard players operation #mc.temp.gui.max_y mc.data = #mc.temp.gui mc.data
$scoreboard players add #mc.temp.gui.max_y mc.data $(height)
$scoreboard players remove #mc.temp.gui.max_y mc.data $(edge_margin)
execute unless score #mc.mouse.y mc.data < #mc.temp.gui.max_y mc.data run return run function mc:main/inputs/trigger/edge/found {side:up}
