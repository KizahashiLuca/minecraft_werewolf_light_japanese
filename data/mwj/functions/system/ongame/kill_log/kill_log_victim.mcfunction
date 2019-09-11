###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Store Recent Time
scoreboard players operation @s VICTIM = Time KILLLOG_NUM
scoreboard players operation @s SECOND = Time SECOND
scoreboard players operation @s TICK = Time TICK

## Store Victim Flag
scoreboard players set @s VICTIM_FLAG 1

## Count Number of Victim
scoreboard players add Time VICTIM_NUM 1

## Increment Kill Log Number by 1
scoreboard players add Time KILLLOG_NUM 1