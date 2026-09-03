##temp kill so we always with one menu for now
execute as @n[tag=mc.gui] on passengers on passengers run kill @s
execute as @n[tag=mc.gui] on passengers run kill @s
kill @n[tag=mc.gui]

##summon entity / set menu data
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
                            text:{x:-49,y:50,depth:6,display: "template",scale:"050"},\
                            x:-25,y:50, width:50,height:20,depth:5,edge_margin: 5,\
                            action:[\
                                {type:"button",action:test,trigger:{right_release:true}},\
                                {type:"button",action:test,trigger:{edge:true}},\
                                {trigger:{hover:true},x:-13,y:75,width:0,height:0,depth:6,type:context_box,text:{x:-50,y:75,depth:7,display: "template hover text",scale:"030"}},\
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