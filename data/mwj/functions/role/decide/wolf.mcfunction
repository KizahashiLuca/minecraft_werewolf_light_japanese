###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

execute if score Time WOLF matches 1 as @r[scores={ROLE=0},limit=1] run scoreboard players set @s ROLE 1
execute if score Time WOLF matches 2 as @r[scores={ROLE=0},limit=2] run scoreboard players set @s ROLE 1
execute if score Time WOLF matches 3 as @r[scores={ROLE=0},limit=3] run scoreboard players set @s ROLE 1
execute if score Time WOLF matches 4 as @r[scores={ROLE=0},limit=4] run scoreboard players set @s ROLE 1