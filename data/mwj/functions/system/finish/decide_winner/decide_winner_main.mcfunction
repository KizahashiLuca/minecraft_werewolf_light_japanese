###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

execute if score #MWL GameMode matches 1 run function mwj:system/finish/decide_winner/decide_winner_wolf_prior
execute if score #MWL GameMode matches 2 run function mwj:system/finish/decide_winner/decide_winner_two_r_alive
execute if score #MWL GameMode matches 3 run function mwj:system/finish/decide_winner/decide_winner_extinction