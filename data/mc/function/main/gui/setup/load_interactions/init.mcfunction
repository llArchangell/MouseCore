

data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list set from storage mc:data load.interaction
data remove storage mc:data load.interaction 

execute if data storage mc:data temp.list[0] summon text_display run function mc:main/gui/setup/load_interactions/loop with storage mc:data temp.list[0].background



