###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Message for Mason Pair
execute as @a[scores={CurrentRole=21}] if score @s MasonPair = #MWL MasonPair run scoreboard players set @s RoleOfNum 1

## Message for Mason Pair
tellraw @a[scores={CurrentRole=21,RoleOfNum=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={CurrentRole=21,RoleOfNum=1}]","color":"dark_green"},{"text":" です。","color":"white"}]

## Reset Scoreboard
scoreboard players reset @a RoleOfNum
scoreboard players add #MWL MasonPair 1