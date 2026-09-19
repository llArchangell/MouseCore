
$data modify storage mc:data temp.kill_page set from entity @s data.pages[$(old_page)].interaction
execute if data storage mc:data temp.kill_page[0] run function mc:main/gui/setup/pages/unload/loop with storage mc:data temp.kill_page[0]