###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

tellraw @s ["",{"text":"あなたの役職は既に使用できません","color":"reset"}]
scoreboard players set @s TORCH 0
scoreboard players reset @s SEER_OBJ
scoreboard players reset @s MEDIUM_OBJ