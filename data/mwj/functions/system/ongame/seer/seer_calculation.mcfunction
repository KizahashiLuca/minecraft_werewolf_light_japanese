###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Calculate Scoreboard
scoreboard players operation @s ROLE_TARGET = @s ROLE_PAGE
scoreboard players operation @s ROLE_TARGET *= Time 10
scoreboard players operation @s ROLE_TARGET += @s ROLE_BUTTON
