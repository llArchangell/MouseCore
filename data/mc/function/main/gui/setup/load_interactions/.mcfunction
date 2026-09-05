$summon text_display ~ ~ ~ \
    {\
    text:{text:"\uE000",font:"mc:ui/background_generic",color:dark_gray },\
    Tags:["mc.gui.interaction_setup"],\
    \
    view_range: 9999f ,\
    billboard: "center" ,\
    background: 0 ,\
    teleport_duration: 1 ,\
    interpolation_duration: 1 ,\
    transformation:\
    {\
    left_rotation:  [0f,0f,0f,1f],\
    right_rotation: [0f,0f,0f,1f],\
    scale:          [0f,0f,0f],\
    translation:    [0f,0f,0f]\
    },\
    \
    Passengers:\
        [\
            {id:"text_display",\
            text:{text:"$(display)",color:gray},\
            billboard:"center",\
            background:0,\
            transformation:\
                {\
                left_rotation:  [0f,0f,0f,1f],\
                right_rotation: [0f,0f,0f,1f],\
                scale:          [0.$(scale)f,0.$(scale)f,0.$(scale)f],\
                translation:    [0f,0f,0f]\
                },\ 
            },\
        ]\
    }

scoreboard players add #mc.interaction_id mc.data 1
execute as @n[type=text_display,limit=1,distance=..5,tag=mc.gui.interaction_setup] run function mc:main/gui/setup/set_size with storage mc:data temp.list[0]

data remove storage mc:data temp.list[0]
execute if data storage mc:data temp.list[0] run function mc:main/gui/setup/load_interactions/ with storage mc:data temp.list[0].text
