###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Run every tick
execute if score Time GAME matches 90 run function mwj:system/setting/choose_mode/choose_mode_main
execute if score Time GAME matches 91 run function mwj:system/setting/decision_role_addition/role_addition_main
execute if score Time GAME matches 92 run function mwj:system/setting/decision_time_limit/time_limit_main
execute if score Time GAME matches 10 run function mwj:system/preparation/preparation_main
execute if score Time GAME matches 11 run function mwj:system/ongame/ongame