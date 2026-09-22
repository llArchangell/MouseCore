$execute store result storage mc:data $(target).id int 1 run scoreboard players add #mc.temp.id mc.data 1
scoreboard players operation @s mc.data = #mc.temp.id mc.data