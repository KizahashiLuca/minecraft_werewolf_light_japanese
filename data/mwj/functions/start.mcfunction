###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Detect Gamemode
execute unless score Time GAME matches 1..100 run function mwj:system/setting/initial_setting/set_initial_start
execute if score Time GAME matches 1..100 run function mwj:system/finish/reject_game