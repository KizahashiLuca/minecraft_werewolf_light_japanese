###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Thief 1
execute if score @s PREV_ROLE matches 9 if score @s ROLE matches 1..2 if score @s DEATH matches 0 if score Time WINNER matches 1 run scoreboard players set @s THIEF_ACHIEVE1 1