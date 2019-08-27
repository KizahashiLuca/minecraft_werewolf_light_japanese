###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Error Message
tellraw @s ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @s ["",{"text":"  エラー","color":"reset"}]
tellraw @s ["",{"text":"    あなたの役職は既に使用できません","color":"reset"}]
tellraw @s ["",{"text":"----------------------------------\n","color":"reset"}]

## Reset Scoreboard
scoreboard players set @s TORCH 0
execute if score @s ROLE matches 5 run scoreboard players reset @s SEER_OBJ
execute if score @s ROLE matches 6 run scoreboard players reset @s MEDIUM_OBJ
execute if score @s ROLE matches 8 run scoreboard players reset @s DETECTIVE_OBJ