$execute store result storage mc:data temp.old_page int 1 run scoreboard players get #mc.slider.old_percent_$(axis) mc.data
function mc:main/gui/setup/pages/unload/ with storage mc:data temp



execute store result storage mc:data temp.current_page int 1 run scoreboard players get #mc.slider.percent mc.data
function mc:main/gui/setup/pages/ with storage mc:data temp

