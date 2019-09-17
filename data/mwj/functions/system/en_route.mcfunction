###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Join in midtime of preparation
execute unless score Time GAME matches 11 run team join Player @a[team=!Player]
execute unless score Time GAME matches 11 run gamemode adventure @a[team=Player]
execute unless score Time GAME matches 11 run clear @a[team=Player]

## Join in midtime of ongame
execute if score Time GAME matches 11 run gamemode spectator @a[team=!Player]
execute if score Time GAME matches 11 run clear @a[team=!Player]
