###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Calculate Scoreboard
scoreboard players operation @s RoleTarget = @s TurnPageNum
scoreboard players operation @s RoleTarget *= #MWL 10
scoreboard players operation @s RoleTarget += @s RoleTrigger
