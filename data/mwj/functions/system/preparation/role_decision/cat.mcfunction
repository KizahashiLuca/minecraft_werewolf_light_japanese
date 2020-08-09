###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Set the Role
execute if score #MWL NumOfRole matches 1.. as @r[team=Player] run scoreboard players set @r[scores={CurrentRole=0},team=Player] CurrentRole 40

## Decrement value by 1
scoreboard players remove #MWL NumOfRole 1

## Repeat
execute if score #MWL NumOfRole matches 1.. run function mwj:system/preparation/role_decision/cat
