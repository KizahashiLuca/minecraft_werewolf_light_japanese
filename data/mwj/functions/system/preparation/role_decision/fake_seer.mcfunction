###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set the Role
execute if score #MWL NumOfRole matches 1.. as @p[team=Player,sort=random] run scoreboard players set @p[scores={CurrentRole=0},team=Player,sort=random] CurrentRole 26

## Decrement value by 1
scoreboard players remove #MWL NumOfRole 1

## Repeat
execute if score #MWL NumOfRole matches 1.. run function mwj:system/preparation/role_decision/fake_seer
