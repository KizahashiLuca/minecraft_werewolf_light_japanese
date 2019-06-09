###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
###############################

## count down
function mwj:system/time

execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a[tag=host] times 5 10 5
execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a[tag=host] title [{"score":{"name":"Time","objective":"Limit"},"color":"green","bold":true}]

execute if score Time TIME matches 0 if score Time Limit matches 0 run scoreboard players set @a[tag=host] TimeTrigger 3
execute unless score Time TimeTrigger matches 0 run function mwj:time_decision