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
execute if predicate mwj:system/game_phase/settings/set_roles/one_or_more_player_role as @p[team=Player,sort=random] run scoreboard players operation @a[scores={CurrentRole=24,MasonPair=0},sort=random,limit=2] MasonPair = #MWL MasonPair

## Decrement value by 1
scoreboard players remove #MWL PlayerRole 1

## Increment
execute if predicate mwj:system/game_phase/settings/set_roles/one_or_more_player_role run scoreboard players add #MWL MasonPair 1

## Repeat
execute if predicate mwj:system/game_phase/settings/set_roles/one_or_more_player_role run function mwj:system/game_phase/settings/set_roles/pairs/mason