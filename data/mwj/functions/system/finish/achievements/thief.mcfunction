###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Thief 1
execute if score @s PREV_ROLE matches 9 if score @s ROLE matches 1..2 if score @s DEATH matches 0 if score Time WINNER matches 1 run scoreboard players set @s THIEF_ACHIEVE1 1