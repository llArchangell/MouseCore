# # ##temp kill so we always with one menu for now
# execute as @n[tag=mc.gui] on passengers on passengers run kill @s
# execute as @n[tag=mc.gui] on passengers run kill @s
# kill @n[tag=mc.gui]
function mc:main/gui/kill_all
##summon entity / set menu data

execute positioned ^ ^ ^.5 run summon text_display ~ ~ ~ \
{\
    text:{text:"\uE000",font:"mc:ui/background_generic",color:black},\
    text_opacity:100, \
    see_through:0b,\
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
        origin_x: 100 ,\
        origin_y: -100 ,\
        \
        edge_margin: 0,\
        \
        layer: 0 ,\
        depth: 0,\
        \
        width: 200 ,\
        height: 300 ,\
        \
        x_offset: 0 ,\
        y_offset: 0 ,\
        interaction: [\
                            {\
                            text:{x:-100,y:12,depth:6,display: "Ok!",scale:"0525", background_color:black, text_color:"gray", highlight_color: "green",text_opacity:50,alignment:"center",line_width:100},\
                            x:-70,y:10, width:60,height:20,depth:1,edge_margin: 0, \
                            action:[\
                                {trigger:{left_release:true}, type: "button", \
                                    actions:[\
                                        {module: included, action: "close_gui"},\
                                        {module: included, action: "test"}\
                                        ]\
                                    },\
                                ] \
                            },\
                            \
                            \
                            {\
                            text:{x:-100,y:250,depth:6,display: "Welcome to MouseCore!",scale:"0525", background_color:black, text_color:"white", highlight_color: "green",text_opacity:255,alignment:"center",line_width:100},\
                            x:0,y:0, width:0,height:0,depth:1,edge_margin:0, \
                            action:[] \
                            },\
                            \
                            {\
                            text:{x:-100,y:40,depth:6,display:"This is some text with line-width", \
                            scale:"02625", background_color:black, text_color:"white", highlight_color: "green",text_opacity:255,alignment:"left",line_width:50},\
                            x:0,y:0, width:0,height:0,depth:1,edge_margin:0, \
                            action:[] \
                            },\
\
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