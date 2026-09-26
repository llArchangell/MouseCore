

##set background entity data
$data merge entity @s {\
\
    Tags:[],\
    \
    text:{\
        text: "\uE000"                   ,\
        font: "mc:ui/background_generic" ,\
        color: "$(background_color)"}               ,\
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
    scale:          [1f,0f,0f   ]  ,\
    translation:    [0f,0f,0f   ] },\
    \
    Passengers:[] \
    }

##ride background
ride @s mount @n[limit=1,type=text_display,distance=..10,tag=mc.gui.setup]

##set id
function mc:main/gui/setup/get_id {target:"temp.list[0]"}

##set interaction size + translation
function mc:main/gui/setup/set_size with storage mc:data temp.list[0].background
function mc:main/gui/setup/set_translation/x with storage mc:data temp.list[0].background
function mc:main/gui/setup/set_translation/y with storage mc:data temp.list[0].background

tag @s add mc.gui.interaction_setup
execute if data storage mc:data temp.list[0].text summon text_display run function mc:main/gui/setup/load_interactions/load_text with storage mc:data temp.list[0].text
tag @s remove mc.gui.interaction_setup

##store created id-ed interaction
data modify storage mc:data load.interaction append from storage mc:data temp.list[0]

##next interaction
data remove storage mc:data temp.list[0]
execute if data storage mc:data temp.list[0] summon text_display run function mc:main/gui/setup/load_interactions/loop with storage mc:data temp.list[0].background

