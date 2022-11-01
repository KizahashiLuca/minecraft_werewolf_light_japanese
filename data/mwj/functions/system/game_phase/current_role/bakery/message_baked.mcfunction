####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give breads
loot give @a[scores={DeathCount=0}] loot mwj:item/roles/bread

## Set scoreboard
scoreboard players remove @s CountOfBakery 1

## Send a Common Message
tellraw @a [""]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a ["",{"text":"  パンが村のみんなに配られました。","color":"white"}]
tellraw @s ["",{"text":"    配れる回数はあと ","color":"white"},{"score":{"name":"@s","objective":"CountOfBakery"},"color":"white"},{"text":"回 です。","color":"white"}]
tellraw @a ["",{"text":"----------------------------------","color":"white"}]
tellraw @a [""]