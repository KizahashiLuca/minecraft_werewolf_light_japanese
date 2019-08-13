###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

## count down
function mwj:system/time

execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a[tag=host] times 5 10 5
execute if score Time TIME matches 0 unless score Time Limit matches 0 run title @a[tag=host] title [{"score":{"name":"Time","objective":"Limit"},"color":"green","bold":true}]

execute if score Time TIME matches 0 if score Time Limit matches 0 run scoreboard players set @a[tag=host] RoleTrigger 3