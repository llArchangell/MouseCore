# # ##temp kill so we always with one menu for now
# execute as @n[tag=mc.gui] on passengers on passengers run kill @s
# execute as @n[tag=mc.gui] on passengers run kill @s
# kill @n[tag=mc.gui]
# function mc:main/gui/kill_all
##summon entity / set menu data
execute positioned ^ ^ ^.5 run summon text_display ~ ~ ~ \
{\
    text:{text:"\uE000",font:"mc:ui/background_generic",color:dark_purple},\
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
        edge_margin: 10,\
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
                            {\
                            text:{x:-94,y:89,depth:6,display: "x",scale:"0525", background_color:"red" , text_color:"dark_gray", highlight_color: "white"},\
                            id: 0, x:-90,y:90, width:10,height:10,depth:1,edge_margin: 5, \
                            action:[\
                                {trigger:{left_release:true}, type: "button", module: included, action: "close_gui"},\
                                    ] \
                            },\
                            \
                            {\
                            text:{x:4,y:0,depth:6,display: "x",scale:"0525", background_color:"red" , text_color:"dark_gray", highlight_color: "white"},\
                            id: 0, x:0,y:0, width:10,height:10,depth:1,edge_margin: 5, \
                            action:[\
                                {trigger:{left_release:true}, type: "button", module: included, action: "close_gui"},\
                                    ] \
                            },\
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

##init setup functions
execute as @n[type=text_display,tag=mc.gui.setup,limit=1,distance=..5] at @s run function mc:main/gui/setup/ with entity @s data