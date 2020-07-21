###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Calculate Scoreboard
scoreboard players operation @s RoleTarget = @s TurnPageNum
scoreboard players operation @s RoleTarget *= #MWL 10
scoreboard players operation @s RoleTarget += @s RoleTrigger
