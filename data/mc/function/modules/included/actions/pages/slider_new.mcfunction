execute if score #mc.gui.old_page mc.data = #mc.gui.new_page mc.data run return fail

$data modify storage mc:data temp.current_page set from storage mc:data temp.$(new)
function mc:main/gui/setup/pages/ with storage mc:data temp

