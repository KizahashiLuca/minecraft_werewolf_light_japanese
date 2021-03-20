###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Error Message
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  エラー","color":"white"}]
tellraw @s ["",{"text":"    あなたの役職は既に使用できません","color":"white"}]
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players reset @s DropTorch
scoreboard players reset @s RoleTrigger