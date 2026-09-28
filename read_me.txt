##################################################
            Mouse core Documentation
##################################################

Notes: I have never wrote a read-me in my entire life.
If something is unclear, please lemme know on discord: "archangel_______"

MouseCore is a mouse input library inside minecraft that adds custom data-driven menus.
It is built around the goal to build more complex, inventory-less, tools with this tech, since we still lack functionality for it to make it user friendly.
I suppose you could also use it to create main menus, osu like games, everything mouse-only related...

How does it work?
It uses a trick including those two commands : /spectate + /ride to lock the player view while keeping their motion.
From there we can get their rotations values and add a mouse entity, and we got ourselves a custom mouse input!

Although this is a cool concept, the restrictions are pretty high, they are as such:

- no scroll
- left click must be bind on jump
- right click must be bind on run
- and clearly anything that has to do with spectator mode

How is the data structured?

It always begins with a base which defines the background of a menu
Here's an example:

data modify storage mc:data load set value \ //when you create a new menu / add elements this is the storage you want to use
{\
        type: "main", \    //type is used to let the library which kind of element this is, in this case = main, so the menu main settings
        current_page: -1,\ //always set on -1 if no pages is defined in pages[], else this value will be used to load your wanted page on the menu setup
        old_page: -1,\     //always set on -1 if no pages is defined in pages[], else this value will be used to load your wanted page on the menu setup
        \
        background:{\
                             \
            opacity: 100    ,\            //set background opacity
            background_color: "black"  ,\ //set background color, can be a hex value
                             \
            x: 0            ,\            //never changes
            y: 0            ,\            //never changes
            origin_x: 100   ,\            //defines the base x value where the menu is spawned
            origin_y: -100  ,\            //defines the base y value where the menu is spawned
                             \
            width: 10       ,\            //defines the width of the background
            height: 20      ,\            //defines the height of the height
                             \
            layer: 0        ,\            //defines the priority when interacting with a menu, a higher value on top of a lesser will always be chosen
            depth: 1       },\            //depth defines the z value of your menus, this is mainly used to display menus on top of each other clearly
        \

        //then from there u can add your interactions, which looks like this:
        //Notes: anything that goes in there will never be removed by any other system, which is great for sliders!
        interaction: [{\        //first, you also need a background array to define the interaction size / looks, this is identical to what's above
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
                                    depth:50       },\
                                \
                                \
                                //to which you can add text, this part is optional and works with its own datas
                                text:{\
                                        x: 5                         ,\ //set x axis
                                        y: 6                         ,\ //set y axis
                                        depth: 6                     ,\ //set depth of the text
                                                                      \
                                        text: "Ok!"                  ,\ //set which text you want to display
                                        scale: "0525"                ,\ //set the text scale
                                        background_color: "white"    ,\ //set the init color of the text
                                        highlight_color: "green"     ,\ //set the highlight_color of the text = when your mouse is hovering the interaction = background values
                                        opacity: 255                 ,\ //set the opacity of the text
                                        alignment: "center"          ,\ //set the alignment of the text
                                        line_width: 100              ,\ //set the amount of pixel after which a line skips a line
                                        },\
                                \
                                \  //then come the action list, here's how it looks!
                                action:[\
                                {trigger:{"left_release":true}                               ,\ // first you need a trigger, supported = left_hold, left_release, right_hold, right_release
                                module: "included"                                           ,\ // set the type namespace, 
                                type: "button"                                               ,\ // set the type name, types are up for you to decide, they are a little more freedom to create new functionalities, they are always stored in mc:modules/your_module/types/init
                                settings: {}                                                 ,\ // settings calls the function you want with whatever data you want attached to it
                                \
                                \//here is the action list, actions are always store inside mc:modules/your_module/actions/,
                                \
                                action_list:[\
                                {module:"included",\            //namespace your action belongs to
                                action:"close_gui",\            //your action path from mc:modules/your_module/actions/{here} 
                                settings:{}}]\                  //the data you want to call the function with
                                }],\
                            }],\
        \///then optionaly, you can add pages
        \///pages works just like your interaction[] list and need the same data, it is structured like so:
        pages:[\
        {interaction:[{interaction_1},{interaction_2},...]},\
        {interaction:[{interaction_1},{interaction_2},...]},\
        ]
}

// then call this function to call your menu setup
execute positioned ^ ^ ^.5 summon text_display run function mc:main/gui/setup/ with storage mc:data load

//usefull things to know
- all elements / elements interaction have a given id on setup, either in the main storage mc:data elements[] and in their mc.data score
- your current hovering interaction element is always stored inside mc:data current_action
- the interaction id you are currently hovering is always stored inside current_action.id
- the main menu id you are currently hovering is always stored inside temp.current_element

-load a page as well as deleting the previous one, use those actions in this order
action_list:[\
        {module:"included",action:"pages/set_id",settings:{current_page:1}},\           //set your wanted page id you want to load
        {module:"included",action:"pages/load",settings:"with storage mc:data temp"}],\ //main load function

// note that it is done this way so that sliders can also access the main load function easily, here's an example with a slider

action_list:[\
        {module:"included",action:"slider/return_value/",settings:{axis:y,returned_value:"current_page"}},\ //get current_page
        {module:"included",action:"pages/load",settings:"with storage mc:data temp"},]\                     //main load function