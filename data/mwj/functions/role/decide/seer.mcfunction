###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
###############################

execute if score Time SEER matches 1 as @r[scores={ROLE=0},limit=1] run scoreboard players set @s ROLE 5
scoreboard players enable @p[scores={ROLE=5}] SEER_OBJ