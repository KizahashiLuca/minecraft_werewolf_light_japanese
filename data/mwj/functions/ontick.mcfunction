###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 04 March 2019
## Version: beta-1.0
###############################

## Run every tick
execute if score Time GAME matches 1 run function mwj:system/ongame
execute if score Time GAME matches 2 run function mwj:system/prepare/countdown

execute if score @a[tag=host,limit=1] TimeTrigger matches 1.. run function mwj:system/prepare/time_decision
