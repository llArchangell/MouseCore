##set background entity data
$data merge entity @s {\
\
    Tags:[\
        "mc.gui"           ,\
        "mc.gui.setup"     ,\
        "mc.gui.dragable" ],\
    \
    text:{\
        text: "\uE000"                  ,\
        font: "mc:ui/background_generic",\
        color: $(background_color)}                ,\
    \
    text_opacity: $(opacity)  ,\
    view_range: 9999f         ,\
    billboard: "center"       ,\
    background: 0             ,\
    teleport_duration: 1      ,\
    interpolation_duration: 0 ,\
    \
    transformation:{\
    left_rotation:  [0f,0f,0f,1f]  ,\
    right_rotation: [0f,0f,0f,1f]  ,\
    scale:          [1f,1f,0f]     ,\
    translation:    [0f,0f,0f]    },\
    \
    Passengers:[] \
    }

##set background init pos
execute as @a on vehicle at @s as @n[tag=mc.gui.setup] run function mc:main/inputs/update_pos/init with storage mc:data load

##set background size
function mc:main/gui/setup/set_size with storage mc:data load.background

##set layer
$scoreboard players set @s mc.gui_layer $(layer)

##set background id
function mc:main/gui/setup/get_id {target:load}
