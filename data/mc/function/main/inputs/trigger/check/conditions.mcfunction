data modify storage mc:data test set from storage mc:data current_action[0]
$execute if data storage mc:data gui.active_types{$(type):true} run function mc:main/gui/type/$(type)/init
