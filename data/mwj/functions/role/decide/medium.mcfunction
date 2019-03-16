###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 March 2019
## Version: beta-1.1
###############################

execute if score Time MEDIUM matches 1 as @r[scores={ROLE=0},limit=1] run scoreboard players set @s ROLE 6
scoreboard players enable @p[scores={ROLE=6}] MEDIUM_OBJ