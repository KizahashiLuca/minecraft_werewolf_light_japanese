###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set the Role
execute if score Time NUMBER_ROLE matches 1.. as @r[team=Player] run scoreboard players set @r[scores={ROLE=0},team=Player] ROLE 4

## Decrement value by 1
scoreboard players remove Time NUMBER_ROLE 1

## Repeat
execute if score Time NUMBER_ROLE matches 1.. run function mwj:system/preparation/decision_role/villager_decision
