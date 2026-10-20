# ##kill all
# function mc:main/gui/kill/all

##setup datas
data modify storage mc:data load set value \
{\
        type: "main", \
        dragable: false, \
        current_page: 3,\
        old_page: 3,\
        \
        background:{\
                             \
            opacity: 255    ,\
            background_color: "white"  ,\
                custom: {\
                text:{text:"\uE000",font:"mc:included/test"}, \
                width:  3 ,\
                height: 3 ,\
                x: 49    ,\
                y: 116    ,\
                }           ,\
                             \
            x: 0            ,\
            y: 0            ,\
            origin_x: 50   ,\
            origin_y: -300  ,\
                             \
            width: 100      ,\
            height: 100     ,\
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
                                    x:65           ,\
                                    y:70           ,\
                                                     \
                                    width:20         ,\
                                    height:20       ,\
                                                     \
                                    depth:50        ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 178                       ,\
                                        y: 75                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "I am pure and angelic."                  ,\
                                        scale: "0525"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "left"          ,\
                                        line_width: 200              ,\
                                        },\
                                \
                                \
                                action:[]\
                            },{\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "dark_gray"  ,\
                                    highlight_color: "gray"        ,\
                                    opacity: 255    ,\
                                    x:80           ,\
                                    y:40           ,\
                                                     \
                                    width:20         ,\
                                    height:20       ,\
                                                     \
                                    depth:50        ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 174                       ,\
                                        y: 44                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "Please tell me more!"                  ,\
                                        scale: "0525"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "left"          ,\
                                        line_width: 200              ,\
                                        },\
                                \
                                action:[]\
                            },{\
                                type: "interaction", \
                                \
                                background:{\
                                    background_color: "dark_gray"  ,\
                                    highlight_color: "gray"        ,\
                                    opacity: 255    ,\
                                    x:65           ,\
                                    y:10           ,\
                                                     \
                                    width:20         ,\
                                    height:20       ,\
                                                     \
                                    depth:50        ,\
                                    edge_margin: 5 },\
                                \
                                    text:{\
                                        x: 220                       ,\
                                        y: 10                        ,\
                                        depth: 6                     ,\
                                                                      \
                                        text: "I am an evil psycopath with no mercy."                  ,\
                                        scale: "0525"                ,\
                                        background_color: "white"    ,\
                                        highlight_color: "green"     ,\
                                        opacity: 255                 ,\
                                        alignment: "left"          ,\
                                        line_width: 200              ,\
                                        },\
                                \
                                action:[]\
                            }],\
\
        pages:[],\
        \
}

##load entity
execute positioned ^ ^ ^.5 summon text_display run function mc:main/gui/setup/ with storage mc:data load
