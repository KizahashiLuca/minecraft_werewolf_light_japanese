###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

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