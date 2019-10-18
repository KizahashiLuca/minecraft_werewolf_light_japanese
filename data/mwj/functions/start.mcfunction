###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Detect Gamemode
execute if entity @p[tag=host] run function mwj:system/finish/reject_game
execute unless entity @p[tag=host] run function mwj:system/setting/initial_setting/set_initial_start