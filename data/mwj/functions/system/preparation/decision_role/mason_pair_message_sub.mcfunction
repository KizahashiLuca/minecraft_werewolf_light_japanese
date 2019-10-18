###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Message for Mason Pair
execute as @a[scores={ROLE=7}] if score @s MASON_PAIR = Time MASON_PAIR run scoreboard players set @s ROLE_OF_NUM 1

## Message for Mason Pair
tellraw @a[scores={ROLE=7,ROLE_OF_NUM=1}] ["",{"text":"\n    仲間は ","color":"white"},{"selector":"@a[scores={ROLE=7,ROLE_OF_NUM=1}]","color":"dark_green"},{"text":" です。","color":"white"}]

## Reset Scoreboard
scoreboard players set @a ROLE_OF_NUM 0
scoreboard players add Time MASON_PAIR 1