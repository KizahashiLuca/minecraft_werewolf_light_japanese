###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

execute if score Time GameMode matches 1 run function mwj:system/finish/decide_winner/decide_winner_wolf_prior
execute if score Time GameMode matches 2 run function mwj:system/finish/decide_winner/decide_winner_two_r_alive
execute if score Time GameMode matches 3 run function mwj:system/finish/decide_winner/decide_winner_extinction