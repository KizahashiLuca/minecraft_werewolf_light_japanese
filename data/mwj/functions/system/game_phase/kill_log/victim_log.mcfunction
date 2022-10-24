####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Store Recent Time
scoreboard players operation @s NumberOfVictim = #MWL NumberOfKillLog
scoreboard players operation @s Second = #MWL Second
scoreboard players operation @s Tick = #MWL Tick

## Store Victim Flag
scoreboard players set @s FlagOfVictim 1

## Count Number of Victim
scoreboard players add #MWL CountOfVictim 1

## Increment Kill Log Number by 1
scoreboard players add #MWL NumberOfKillLog 1