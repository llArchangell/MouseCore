execute unless data entity @s data{type:"main"} on vehicle run return run function mc:main/gui/kill/current/get

execute store result storage mc:data temp.id int 1 run scoreboard players get @s mc.data