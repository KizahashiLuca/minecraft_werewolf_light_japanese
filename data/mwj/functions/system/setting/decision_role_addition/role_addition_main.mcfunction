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

## Detect RoleTrigger
execute if score Time TIME matches 0 if score Time Limit matches 0 run scoreboard players set @a[tag=host] RoleTrigger 4

## Decide an Added Role
execute if score @a[tag=host,limit=1] RoleTrigger matches 1.. run function mwj:system/setting/decision_role_addition/role_addition_message