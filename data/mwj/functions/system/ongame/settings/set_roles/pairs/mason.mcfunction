####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set the Role
execute if score #MWL NumOfRole matches 1.. as @p[team=Player,sort=random] run scoreboard players operation @p[scores={CurrentRole=24,MasonPair=0},sort=random,limit=2] MasonPair = #MWL MasonPair

## Decrement value by 1
scoreboard players remove #MWL NumOfRole 1

## Increment
execute if score #MWL NumOfRole matches 1.. run scoreboard players add #MWL MasonPair 1

## Repeat
execute if score #MWL NumOfRole matches 1.. run function mwj:system/ongame/settings/set_roles/pairs/mason