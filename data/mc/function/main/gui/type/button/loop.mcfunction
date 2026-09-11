$function mc:modules/$(module)/actions/$(action)

data remove storage mc:data temp.current_action[0]
execute if data storage mc:data temp.current_action[0] run function mc:main/gui/type/button/loop with storage mc:data temp.current_action[0]
