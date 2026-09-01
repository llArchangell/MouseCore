execute as @n[tag=mc.gui] on passengers run kill @s
kill @n[tag=mc.gui]

execute positioned ^ ^ ^.5 run summon text_display ~ ~ ~ \
{\
    text:{text:"\uE000",font:"mc:ui/background_generic",color:black},\
    \
    Tags:\
        [\
        "mc.gui",\
        "mc.gui.setup",\
        "mc.gui.dragable",\
        ],\
    \
    data:\
        {\
        x: 0 ,\
        y: 0 ,\
        origin_x: 0 ,\
        origin_y: 0 ,\
        \
        layer: 0 ,\
        depth: 0,\
        \
        width: 100 ,\
        height: 100 ,\
        \
        x_offset: 0 ,\
        y_offset: 0 ,\
        interaction: [\
                {x:-25,y:50,text_x:0,text_y:0, width:25,height:25,depth:5,label_name:"template",action:template},\
                     ],\
        },\
    \
    view_range: 9999f ,\
    billboard: "center" ,\
    background: 0 ,\
    teleport_duration: 1 ,\
    interpolation_duration: 0 ,\
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
        ]\
}


execute as @n[type=text_display,tag=mc.gui.setup,limit=1,distance=..5] at @s run function mc:main/gui/setup/ with entity @s data