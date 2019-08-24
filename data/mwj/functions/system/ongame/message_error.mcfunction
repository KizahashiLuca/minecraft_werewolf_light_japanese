###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Error Message
tellraw @a ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @a ["",{"text":"  エラー","color":"reset"}]
tellraw @s ["",{"text":"    あなたの役職は既に使用できません","color":"reset"}]
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Reset Scoreboard
scoreboard players set @s TORCH 0
scoreboard players reset @s SEER_OBJ
scoreboard players reset @s MEDIUM_OBJ
scoreboard players reset @s DETECTIVE_OBJ