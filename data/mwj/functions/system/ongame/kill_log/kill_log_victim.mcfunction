###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Store Recent Time
scoreboard players operation @s VICTIM = #MWL KILLLOG_NUM
scoreboard players operation @s Second = #MWL Second
scoreboard players operation @s Tick = #MWL Tick

## Store Victim Flag
scoreboard players set @s VICTIM_FLAG 1

## Count Number of Victim
scoreboard players add #MWL VICTIM_NUM 1

## Increment Kill Log Number by 1
scoreboard players add #MWL KILLLOG_NUM 1