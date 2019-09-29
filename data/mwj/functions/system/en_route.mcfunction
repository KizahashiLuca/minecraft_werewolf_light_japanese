###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Leave in midtime of preparation
execute if score Time GAME matches 10 run team leave @a[team=Player,gamemode=spectator]
execute if score Time GAME matches 90..100 run team leave @a[tag=!host,team=Player,gamemode=spectator]

## Join in midtime of preparation
execute unless score Time GAME matches 11 run team join Player @a[tag=!host,team=!Player,gamemode=!spectator]
execute unless score Time GAME matches 11 run gamemode adventure @a[tag=!host,team=Player]
execute unless score Time GAME matches 11 run clear @a[tag=!host,team=Player]

## Join in midtime of ongame
execute if score Time GAME matches 11 run gamemode spectator @a[team=!Player]
execute if score Time GAME matches 11 run clear @a[team=!Player]
