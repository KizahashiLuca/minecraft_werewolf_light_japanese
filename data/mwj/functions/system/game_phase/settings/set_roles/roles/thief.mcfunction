####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set the Role
execute if predicate mwj:system/game_phase/settings/set_roles/one_or_more_player_role as @p[team=Player,sort=random] run scoreboard players set @p[scores={CurrentRole=0},team=Player,sort=random] CurrentRole 35

## Decrement value by 1
scoreboard players remove #MWL PlayerRole 1

## Repeat
execute if predicate mwj:system/game_phase/settings/set_roles/one_or_more_player_role run function mwj:system/game_phase/settings/set_roles/roles/thief
