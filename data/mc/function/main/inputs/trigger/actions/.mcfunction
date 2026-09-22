
data modify storage mc:data temp.actions set value []
data modify storage mc:data temp.actions set from storage mc:data temp.list[0].action_list

function mc:main/inputs/trigger/actions/loop with storage mc:data temp.actions[0]

