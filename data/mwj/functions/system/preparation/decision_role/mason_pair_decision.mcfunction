###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set the Role
execute if score #MWL NUMBER_ROLE matches 1.. as @r[team=Player] run scoreboard players operation @r[scores={ROLE=7,MASON_PAIR=0},limit=2] MASON_PAIR = #MWL MASON_PAIR

## Decrement value by 1
scoreboard players remove #MWL NUMBER_ROLE 1

## Increment
execute if score #MWL NUMBER_ROLE matches 1.. run scoreboard players add #MWL MASON_PAIR 1

## Repeat
execute if score #MWL NUMBER_ROLE matches 1.. run function mwj:system/preparation/decision_role/mason_pair_decision