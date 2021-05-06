####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Message for Mason Pair
execute as @a[scores={CurrentRole=24}] if score @s MasonPair = #MWL MasonPair run scoreboard players set @s RoleOfNum 1

## Message for Mason Pair
tellraw @a[scores={CurrentRole=24,RoleOfNum=1}] ["",{"text":"      ","color":"white"},{"selector":"@a[scores={CurrentRole=24,RoleOfNum=1}]","color":"dark_green"}]

## Reset Scoreboard
scoreboard players reset @a RoleOfNum
scoreboard players add #MWL MasonPair 1