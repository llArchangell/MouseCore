
# ##set background entity data
$data merge entity @s {\
\
    text:{                                    \
        text: "$(text)"                      ,\
        color: "$(background_color)"}        ,\
    alignment: "$(alignment)"                ,\
    line_width: $(line_width)                ,\
    text_opacity: $(opacity)                 ,\
    view_range: 9999f                        ,\
    billboard: "center"                      ,\
    background: 0                            ,\
    teleport_duration: 1                     ,\
    interpolation_duration: 0                ,\
    \
    transformation:{\
    left_rotation:  [0f,0f,0f,1f]                         ,\
    right_rotation: [0f,0f,0f,1f]                         ,\
    scale:          [0.$(scale)f,0.$(scale)f,0.$(scale)f] ,\
    translation:    [0f,0f,0f]}                           ,\
}

##ride interaction
ride @s mount @n[limit=1,type=text_display,distance=..10,tag=mc.gui.interaction_setup]

# ##set text translation
function mc:main/gui/setup/set_translation/x with storage mc:data temp.list[0].text
function mc:main/gui/setup/set_translation/y with storage mc:data temp.list[0].text
