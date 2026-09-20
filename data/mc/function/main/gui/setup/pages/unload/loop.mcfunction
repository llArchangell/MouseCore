$execute as @e[scores={mc.data=$(id)}] on passengers run kill @s
$kill @e[scores={mc.data=$(id)}]

$data remove entity @s data.interaction[{id:$(id)}]
data remove storage mc:data temp.kill_page[0]
execute if data storage mc:data temp.kill_page[0] run function mc:main/gui/setup/pages/unload/loop with storage mc:data temp.kill_page[0]
