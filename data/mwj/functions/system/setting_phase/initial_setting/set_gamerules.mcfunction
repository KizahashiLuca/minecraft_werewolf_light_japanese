####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change Gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doFireTick false
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule keepInventory false
gamerule sendCommandFeedback false
gamerule showDeathMessages false

## Set difficulty
difficulty peaceful

## Set gamemode
gamemode adventure @a[gamemode=!spectator]

## Clear effects
effect clear @a[gamemode=!spectator]

## Set effect
effect give @a[gamemode=!spectator] minecraft:resistance 1000000 4 true

## Clear recipes
recipe take @a *

## Clear inventory
clear @a