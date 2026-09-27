$data modify storage mc:data elements[{id:$(current_element)}].current_page set from storage mc:data temp.current_page

$execute store result score #mc.gui.page_load mc.data run data get storage mc:data elements[{id:$(current_element)}].current_page
$execute store result score #mc.gui.page_load_ mc.data run data get storage mc:data elements[{id:$(current_element)}].old_page

execute unless score #mc.gui.page_load mc.data = #mc.gui.page_load_ mc.data run function mc:modules/included/actions/pages/old with storage mc:data temp
execute unless score #mc.gui.page_load mc.data = #mc.gui.page_load_ mc.data run function mc:modules/included/actions/pages/new with storage mc:data temp

$data modify storage mc:data elements[{id:$(current_element)}].old_page set from storage mc:data temp.current_page








 