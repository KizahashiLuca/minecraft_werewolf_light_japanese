###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Message for Mason Pair
execute as @a[scores={ROLE=7}] if score @s MASON_PAIR = #MWL MASON_PAIR run scoreboard players set @s ROLE_OF_NUM 1

## Message for Mason Pair
tellraw @a[scores={ROLE=7,ROLE_OF_NUM=1}] ["",{"text":"    仲間は ","color":"white"},{"selector":"@a[scores={ROLE=7,ROLE_OF_NUM=1}]","color":"dark_green"},{"text":" です。","color":"white"}]

## Reset Scoreboard
scoreboard players set @a ROLE_OF_NUM 0
scoreboard players add #MWL MASON_PAIR 1