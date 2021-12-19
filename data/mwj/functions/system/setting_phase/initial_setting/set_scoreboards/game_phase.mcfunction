####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Game phase - Rolls
## Common
scoreboard players set #MWL TagOfRoleWork 0
## Common of augury
scoreboard players set @a RoleDone 0
scoreboard players set #MWL TurnPageMax 0
## Fox
scoreboard players set #MWL NumOfMasonPair 0
scoreboard players set #MWL MasonPair 1
## Thief
scoreboard players set #MWL NumberOfStolen 1

## Game phase - Items
## Snowball
scoreboard players set #MWL NumberOfSnowball 0

## Game phase
## Kill log
scoreboard players set #MWL CountOfKiller 0
scoreboard players set #MWL CountOfVictim 0
scoreboard players set #MWL NumberOfKillLog 1