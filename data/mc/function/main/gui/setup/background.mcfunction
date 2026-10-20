##set background entity data
$data merge entity @s {\
\
    Tags:[\
        "mc.gui"           ,\
        "mc.gui.setup"    ],\
    \
    text:{\
        text: "\uE000"                  ,\
        font: "mc:included/background_generic",\
        color: $(background_color)}                ,\
    \
    text_opacity: $(opacity)  ,\
    view_range: 9999f         ,\
    billboard: "center"       ,\
    background: 0             ,\
    teleport_duration: 1      ,\
    interpolation_duration: 1 ,\
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

##set layer
$scoreboard players set @s mc.gui_layer $(layer)

##set background id
function mc:main/gui/setup/get_id {target:load}


##set background size
execute if data storage mc:data load.background.custom run return run function mc:main/gui/setup/custom/background with storage mc:data load.background.custom

function mc:main/gui/setup/set_size with storage mc:data load.background
