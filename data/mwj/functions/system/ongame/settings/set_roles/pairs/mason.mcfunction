###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set the Role
execute if score #MWL NumOfRole matches 1.. as @p[team=Player,sort=random] run scoreboard players operation @p[scores={CurrentRole=21,MasonPair=0},sort=random,limit=2] MasonPair = #MWL MasonPair

## Decrement value by 1
scoreboard players remove #MWL NumOfRole 1

## Increment
execute if score #MWL NumOfRole matches 1.. run scoreboard players add #MWL MasonPair 1

## Repeat
execute if score #MWL NumOfRole matches 1.. run function mwj:system/ongame/settings/set_roles/pairs/mason