$execute as @e[scores={mc.data=$(kill)}] on passengers run kill @s
$kill @e[scores={mc.data=$(kill)}]
$data remove storage mc:data elements[{id:$(current_element)}].interaction[{id:$(kill)}]

data remove storage mc:data temp.kill_page[0]
execute if data storage mc:data temp.kill_page[0] run data modify storage mc:data temp.kill set from storage mc:data temp.kill_page[0].id
execute if data storage mc:data temp.kill_page[0] run function mc:main/gui/setup/pages/unload/loop with storage mc:data temp