
execute as @e[dx=0,limit=1,tag=mc.included.get_world_data] run return run function mc:modules/included/actions/get_world_data/entity
execute unless block ~ ~ ~ air run return run function mc:modules/included/actions/get_world_data/block


execute positioned ^ ^ ^.5 run function mc:modules/included/actions/get_world_data/ray