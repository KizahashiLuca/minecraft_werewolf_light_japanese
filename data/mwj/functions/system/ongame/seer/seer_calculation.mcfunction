###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Calculate Scoreboard
scoreboard players operation @s ROLE_TARGET = @s ROLE_PAGE
scoreboard players operation @s ROLE_TARGET *= Time 10
scoreboard players operation @s ROLE_TARGET += @s ROLE_BUTTON
