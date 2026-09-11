
data modify storage mc:data temp.current_action set value []
data modify storage mc:data temp.current_action set from storage mc:data temp_current_action.actions[0].actions
execute if data storage mc:data temp.current_action[0] run function mc:main/gui/type/button/loop with storage mc:data temp.current_action[0]
