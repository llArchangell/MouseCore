##scores

scoreboard objectives add mc.data dummy


















##CONSTANTS
scoreboard players set #36000 mc.data 36000




##schedules
schedule function mc:schedules/1t 1t

##Init message
tellraw @a[tag=mc.dev] {text:"[MouseCore initialized...]",color:green}