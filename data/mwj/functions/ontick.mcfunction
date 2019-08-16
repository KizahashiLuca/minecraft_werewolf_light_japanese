###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Run every tick
execute if score Time GAME matches 90 run function mwj:system/prepare/role_setting
execute if score Time GAME matches 91 run function mwj:system/prepare/time_setting
execute if score Time GAME matches 10 run function mwj:system/prepare/countdown
execute if score Time GAME matches 11 run function mwj:system/ongame

execute if score @a[tag=host,limit=1] RoleTrigger matches 1.. run function mwj:system/prepare/role_decision
execute if score @a[tag=host,limit=1] TimeTrigger matches 1.. run function mwj:system/prepare/time_decision
