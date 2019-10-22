###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Error Message
tellraw @s ["",{"text":"\n----------------------------------","color":"reset"}]
tellraw @s ["",{"text":"  エラー","color":"reset"}]
tellraw @s ["",{"text":"    あなたの役職は既に使用できません","color":"reset"}]
tellraw @s ["",{"text":"----------------------------------\n","color":"reset"}]

## Reset Scoreboard
scoreboard players set @s TORCH 0
scoreboard players reset @s ROLE_BUTTON