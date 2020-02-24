###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Set the Role
execute if score Time NUMBER_ROLE matches 1.. as @r[team=Player] run scoreboard players operation @r[scores={ROLE=7,MASON_PAIR=0},limit=2] MASON_PAIR = Time MASON_PAIR

## Decrement value by 1
scoreboard players remove Time NUMBER_ROLE 1

## Increment
execute if score Time NUMBER_ROLE matches 1.. run scoreboard players add Time MASON_PAIR 1

## Repeat
execute if score Time NUMBER_ROLE matches 1.. run function mwj:system/preparation/decision_role/mason_pair_decision