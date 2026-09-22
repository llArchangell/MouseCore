$data modify storage mc:data temp.old_page set value $(old_page)
function mc:main/gui/setup/pages/unload/init with storage mc:data temp

# execute if data storage mc:data temp.kill_page[0] run function mc:main/gui/setup/pages/unload/loop with storage mc:data temp.kill_page[0]