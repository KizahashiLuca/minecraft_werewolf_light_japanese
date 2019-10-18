###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

execute if score Time GameMode matches 1 run function mwj:system/finish/decide_winner/decide_winner_wolf_prior
execute if score Time GameMode matches 2 run function mwj:system/finish/decide_winner/decide_winner_two_r_alive
execute if score Time GameMode matches 3 run function mwj:system/finish/decide_winner/decide_winner_extinction