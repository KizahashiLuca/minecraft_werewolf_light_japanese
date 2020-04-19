###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Leave midtime of preparation
execute if score Time GAME matches 10 run team leave @a[team=Player,gamemode=spectator]
execute if score Time GAME matches 90..100 run team leave @a[tag=!Host,team=Player,gamemode=spectator]

## Log-in midtime of preparation
execute unless score Time GAME matches 11 run team join Player @a[tag=!Host,team=!Player,gamemode=!spectator]
execute unless score Time GAME matches 11 run gamemode adventure @a[tag=!Host,team=Player]
execute unless score Time GAME matches 11 run clear @a[tag=!Host,team=Player]

## Log-in midtime of ongame
execute if score Time GAME matches 11 run gamemode spectator @a[team=!Player]
execute if score Time GAME matches 11 run clear @a[team=!Player]

## Log-in midtime of all game
execute if score Time GAME matches 1..100 run bossbar set minecraft:bossbar players @a
