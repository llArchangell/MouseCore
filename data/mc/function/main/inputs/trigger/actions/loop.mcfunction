

$function mc:modules/$(module)/actions/$(action) {settings:$(settings)}

data remove storage mc:data temp.actions[0]
execute if data storage mc:data temp.actions[0] run function mc:main/inputs/trigger/actions/loop with storage mc:data temp.actions[0]
