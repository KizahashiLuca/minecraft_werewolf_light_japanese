###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Run every tick
execute if score Time GAME matches 90 run function mwj:system/prepare/additional_roles/setting
execute if score Time GAME matches 91 run function mwj:system/prepare/time_limit/setting
execute if score Time GAME matches 10 run function mwj:system/prepare/countdown
execute if score Time GAME matches 11 run function mwj:system/ongame/ongame