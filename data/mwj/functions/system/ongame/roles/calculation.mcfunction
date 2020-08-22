###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Calculate Scoreboard
scoreboard players operation @s TargetOfRole = @s TurnPageNum
scoreboard players operation @s TargetOfRole *= #MWL 10
scoreboard players operation @s TargetOfRole += @s RoleTrigger
