####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Log-in midtime of preparation
execute if score #MWL Phase matches 10 as @a[tag=!Host,team=!Player,gamemode=!spectator] run function mwj:system/common/en_route/not_game_phase
execute if score #MWL Phase matches 10 as @a[team=Player,gamemode=spectator] run team leave @s

## Log-in midtime of ongame
execute if score #MWL Phase matches 11 as @a[tag=!Host,team=!Player,gamemode=!spectator] run function mwj:system/common/en_route/game_phase
execute if score #MWL Phase matches 11 as @a[team=Player,scores={CurrentRole=0},gamemode=!spectator] run function mwj:system/common/en_route/game_phase

## Log-in midtime of setting
execute if score #MWL Phase matches 80..100 as @a[tag=!Host,team=!Player,gamemode=!spectator] run function mwj:system/common/en_route/not_game_phase
execute if score #MWL Phase matches 80..100 as @a[tag=!Host,team=Player,gamemode=spectator] run team leave @s

## Log-in midtime of all game
execute if score #MWL Phase matches 1..100 run bossbar set minecraft:bossbar players @a
