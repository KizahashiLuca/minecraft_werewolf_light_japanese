###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
###############################

tellraw @s ["",{"text":"あなたの役職は既に使用できません","color":"reset"}]
scoreboard players set @s TORCH 0
scoreboard players reset @s SEER_OBJ
scoreboard players reset @s MEDIUM_OBJ