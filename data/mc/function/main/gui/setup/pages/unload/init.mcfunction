data modify storage mc:data temp.kill_page set value []
$data modify storage mc:data temp.kill_page set from storage mc:data elements[{id:$(current_element)}].pages[$(old_page)].interaction

execute unless data storage mc:data temp.kill_page[0] run return fail
data modify storage mc:data temp.kill set from storage mc:data temp.kill_page[0].id
execute if data storage mc:data temp.kill_page[0] run function mc:main/gui/setup/pages/unload/loop with storage mc:data temp