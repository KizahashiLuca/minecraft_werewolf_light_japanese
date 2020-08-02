###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Set the Role
execute if score #MWL NumOfRoles matches 1.. as @r[team=Player] run scoreboard players operation @r[scores={CurrentRole=21,MASON_PAIR=0},limit=2] MASON_PAIR = #MWL MASON_PAIR

## Decrement value by 1
scoreboard players remove #MWL NumOfRoles 1

## Increment
execute if score #MWL NumOfRoles matches 1.. run scoreboard players add #MWL MASON_PAIR 1

## Repeat
execute if score #MWL NumOfRoles matches 1.. run function mwj:system/preparation/decision_role/mason_pair_decision