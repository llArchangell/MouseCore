data modify storage mc:data temp.list set value []
data modify storage mc:data temp.list append from storage mc:data temp_current_action.actions[{type:"hover"}]
scoreboard players set #mc.gui.setting_hover mc.data 1
function mc:main/gui/setup/load_interactions/ with storage mc:data temp.list[0].text