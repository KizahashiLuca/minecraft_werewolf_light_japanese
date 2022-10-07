####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear inventory
clear @p[predicate=mwj:player/host]

## Recount players
function mwj:system/common/roles/recount_roles/main

## Count number of roles
function mwj:system/common/roles/count_number_of_roles

## Replace inventory
loot replace entity @p[predicate=mwj:player/host] inventory.11 loot mwj:system/setting_phase/master/choose_hide_time
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:system/setting_phase/master/choose_glow_time
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:system/setting_phase/master/choose_game_time
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:system/setting_phase/master/choose_game_rule
loot replace entity @p[predicate=mwj:player/host] inventory.15 loot mwj:system/setting_phase/master/choose_item
loot replace entity @p[predicate=mwj:player/host] inventory.17 loot mwj:system/setting_phase/master/choose_role
loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:system/setting_phase/common/cancel
loot replace entity @p[predicate=mwj:system/setting_phase/master/set_ok/main] inventory.25 loot mwj:system/setting_phase/common/ok

## Change phase
scoreboard players set #MWL Phase 80