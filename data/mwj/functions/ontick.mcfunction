###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : Feb 11, 2019
## Version: alpha-0.1
###############################

## Run every tick
execute if score Time GAME matches 1 run function mwj:system/ongame
execute if score Time GAME matches 2 run function mwj:system/prepare/countdown
