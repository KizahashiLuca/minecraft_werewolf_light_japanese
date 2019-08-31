###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Timer System
function mwj:system/time

## Title Count Down
execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a[tag=host] times 5 10 5
execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a[tag=host] title [{"score":{"name":"Time","objective":"Limit"},"color":"green","bold":true}]

## Detect TimeTrigger
execute if score Time TIME matches 0 if score Time Limit matches 0 run scoreboard players set @a[tag=host] TimeTrigger 3

## Decide Time Limit
execute if score @a[tag=host,limit=1] TimeTrigger matches 1.. run function mwj:system/setting/decision_time_limit/time_limit_message