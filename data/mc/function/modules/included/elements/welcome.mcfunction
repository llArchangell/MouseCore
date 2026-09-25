##kill all
function mc:main/gui/kill/all

##setup datas
data modify storage mc:data load set value \
{\
        type: "main", \
        init_page: 3,\
        \
        background:{\
                             \
            opacity: 100    ,\
            background_color: "black"  ,\
                             \
            x: 0            ,\
            y: 0            ,\
            origin_x: 100   ,\
            origin_y: -100  ,\
                             \
            width: 200      ,\
            height: 300     ,\
                             \
            layer: 0        ,\
            depth: 1        ,\
            edge_margin: 0 },\
        \
        interaction: [{\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "dark_gray"  ,\
                                    highlight_color: "gray"        ,\
                                    opacity: 255    ,\
                                    x:180           ,\
                                    y:225           ,\
                                                     \
                                    width:8         ,\
                                    height:16       ,\
                                                     \
                                    depth:50        ,\
                                    edge_margin: 5 },\
                                \
                                \
                                action:[{                                                     \
                                trigger:{"left_hold":true}                                   ,\
                                module: "included"                                           ,\
                                type: "slider"                                               ,\
                                settings: "with storage mc:data temp"                        ,\
                                                                                              \
                                direction:{up:true,down:true}                                ,\
                                x:0, y:50,                                                    \
                                max_y:3, max_x:0                                             ,\
                                width:0, height:225                                          ,\
                                init_x: 180, init_y:225                                      ,\
                                                                                              \
                                action_list:[\
                                {module:"included",action:"slider/return_value/",settings:{axis:y}},\
                                {module:"included",action:"pages/slider_old",settings:{old:y_value_old}}  ,\
                                {module:"included",action:"pages/slider_new",settings:{new:y_value}}]      \
                                }]\
                            }],\
\
        pages:[{interaction:[{\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "black"  ,\
                                    highlight_color: "dark_gray"  ,\
                                    opacity: 100    ,\
                                    x: 75           ,\
                                    y: 10           ,\
                                                     \
                                    width: 50       ,\
                                    height: 25      ,\
                                                     \
                                    depth: 50       ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 100                       ,\
                                        y: 16                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "Ok!"                  ,\
                                        scale: "0525"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "center"          ,\
                                        line_width: 100              ,\
                                        },\
                                \
                                action:[{                                                     \
                                trigger:{"left_release":true}                                ,\
                                module: "included"                                           ,\
                                type: "button"                                               ,\
                                settings: {}                                                 ,\
                                action_list:[                                                 \
                                {module:"included",action:"close_gui",settings:"{}"}         ,\
                                {module:"included",action:"test",settings:"{}"}]             ,\
                                }] \
                            },\
                            {\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "black"  ,\
                                    highlight_color: "dark_gray"  ,\
                                    opacity: 0      ,\
                                    x: 75           ,\
                                    y: 10           ,\
                                                     \
                                    width: 0       ,\
                                    height: 0      ,\
                                                     \
                                    depth: 50       ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 100                       ,\
                                        y: 60                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "THIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA"                  ,\
                                        scale: "02625"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "left"          ,\
                                        line_width: 100              ,\
                                        },\
                                \
                                action:[]\
                            }]},\
                            {interaction:[{\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "black"  ,\
                                    highlight_color: "dark_gray"  ,\
                                    opacity: 0      ,\
                                    x: 75           ,\
                                    y: 10           ,\
                                                     \
                                    width: 0       ,\
                                    height: 0      ,\
                                                     \
                                    depth: 50       ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 100                       ,\
                                        y: 60                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "THIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA"                  ,\
                                        scale: "02625"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "left"          ,\
                                        line_width: 100              ,\
                                        },\
                                \
                                action:[]\
                            }]},\
                            {interaction:[{\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "black"  ,\
                                    highlight_color: "dark_gray"  ,\
                                    opacity: 0      ,\
                                    x: 75           ,\
                                    y: 10           ,\
                                                     \
                                    width: 0       ,\
                                    height: 0      ,\
                                                     \
                                    depth: 50       ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 100                       ,\
                                        y: 60                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "THIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA"                  ,\
                                        scale: "02625"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "left"          ,\
                                        line_width: 100              ,\
                                        },\
                                \
                                action:[]\
                            }]},{interaction:[{\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "black"  ,\
                                    highlight_color: "dark_gray"  ,\
                                    opacity: 0      ,\
                                    x: 75           ,\
                                    y: 10           ,\
                                                     \
                                    width: 0       ,\
                                    height: 0      ,\
                                                     \
                                    depth: 50       ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 100                       ,\
                                        y: 60                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "THIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA\n\nTHIS IS SOME TEST TO DISPLAY LALALALALALALALLALALALALALA"                  ,\
                                        scale: "02625"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "left"          ,\
                                        line_width: 100              ,\
                                        },\
                                \
                                action:[]\
                            }]}],\
        \
}

##load entity
execute positioned ^ ^ ^.5 summon text_display run function mc:main/gui/setup/ with storage mc:data load

