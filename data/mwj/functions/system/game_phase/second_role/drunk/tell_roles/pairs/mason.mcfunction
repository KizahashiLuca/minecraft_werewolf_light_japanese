####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Message for Mason Pair
execute as @a[scores={CurrentRole=24}] if score @s MasonPair = #MWL MasonPair run scoreboard players set @s TagOfRoleWork 1

## Message for Mason Pair
tellraw @a[scores={CurrentRole=24,TagOfRoleWork=1}] ["",{"text":"      ","color":"white"},{"selector":"@a[scores={CurrentRole=24,TagOfRoleWork=1}]","color":"dark_green"}]

## Reset Scoreboard
scoreboard players reset @a TagOfRoleWork
scoreboard players add #MWL MasonPair 1