###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

execute if score #MWL GameMode matches 1 run function mwj:system/finish/decide_winner/normal_wolf
execute if score #MWL GameMode matches 2 run function mwj:system/finish/decide_winner/two_alive
execute if score #MWL GameMode matches 3 run function mwj:system/finish/decide_winner/annihilation