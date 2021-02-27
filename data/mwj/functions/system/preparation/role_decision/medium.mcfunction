###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Set the Role
execute if score #MWL NumOfRole matches 1.. as @p[team=Player,sort=random] run scoreboard players set @p[scores={CurrentRole=0},team=Player,sort=random] CurrentRole 28

## Decrement value by 1
scoreboard players remove #MWL NumOfRole 1

## Repeat
execute if score #MWL NumOfRole matches 1.. run function mwj:system/preparation/role_decision/medium
