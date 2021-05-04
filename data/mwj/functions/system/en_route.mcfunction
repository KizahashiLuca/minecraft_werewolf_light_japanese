####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Leave midtime of preparation
execute if score #MWL Phase matches 10 run team leave @a[team=Player,gamemode=spectator]
execute if score #MWL Phase matches 80..100 run team leave @a[tag=!Host,team=Player,gamemode=spectator]

## Log-in midtime of preparation
execute unless score #MWL Phase matches 11 run team join Player @a[tag=!Host,team=!Player,gamemode=!spectator]
execute unless score #MWL Phase matches 11 run gamemode adventure @a[tag=!Host,team=Player]
execute unless score #MWL Phase matches 11 run clear @a[tag=!Host,team=Player]

## Log-in midtime of ongame
execute if score #MWL Phase matches 11 run gamemode spectator @a[team=Player,scores={CurrentRole=0}]
execute if score #MWL Phase matches 11 run gamemode spectator @a[team=!Player]
execute if score #MWL Phase matches 11 run clear @a[team=!Player]

## Log-in midtime of all game
execute if score #MWL Phase matches 1..100 run bossbar set minecraft:bossbar players @a
