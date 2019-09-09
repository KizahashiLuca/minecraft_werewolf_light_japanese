###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Store Recent Number
scoreboard players operation @s VICTIM = Time VICTIM
scoreboard players operation @s SECOND = Time SECOND
scoreboard players operation @s TICK = Time TICK

## Store Victim Flag
scoreboard players set @s VICTIM_LOG_TEMP 1

## Store Victim Number
scoreboard players operation @s VICTIM_NUM = Time VICTIM