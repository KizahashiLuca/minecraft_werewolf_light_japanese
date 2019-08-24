###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

scoreboard players add Time TIME 1
scoreboard players operation Time TIME %= Time 20
execute if score Time TIME matches 0 unless score Time Limit matches 0 run scoreboard players remove Time Limit 1
