###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 April 2019
## Version: beta-1.2.1
###############################

## Run every tick
execute if score Time GAME matches 1 run function mwj:system/prepare/time_setting
execute if score Time GAME matches 2 run function mwj:system/prepare/countdown
execute if score Time GAME matches 3 run function mwj:system/ongame

execute if score @a[tag=host,limit=1] TimeTrigger matches 1.. run function mwj:system/prepare/time_decision
