###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Accident / Suicide
scoreboard players operation @s KILLER = @s NUM
## Fox is Seered
execute if score @s KILLLOG_FOX matches 1 run scoreboard players operation @s KILLER = @s STRAY_BY_FOX
## Cat Stray Bullet
execute if score @s KILLLOG_CAT matches 1 run scoreboard players operation @s KILLER = @s STRAY_BY_CAT