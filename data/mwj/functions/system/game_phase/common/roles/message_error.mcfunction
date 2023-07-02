####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Error Message
tellraw @s [""]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  エラー","color":"white"}]
tellraw @s ["",{"text":"    あなたの役職は既に使用できません","color":"white"}]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s [""]

## Reset Scoreboard
scoreboard players reset @s DropTorch
scoreboard players reset @s RoleTrigger