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
clear @p[tag=Host]

## Recount players
function mwj:system/common/roles/recount_roles/main

## Count number of roles
function mwj:system/common/roles/count_number_of_roles

## Replace Inventory
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/choose_mode/choose_hide_time
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/choose_mode/choose_glow_time
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/choose_mode/choose_game_time
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/choose_mode/choose_game_rule
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/choose_mode/choose_item
loot replace entity @p[tag=Host] inventory.17 loot mwj:setting/choose_mode/choose_role
loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/choose_mode/cancel
loot replace entity @p[tag=Host,predicate=mwj:setting/choose_mode/set_ok/main] inventory.25 loot mwj:setting/choose_mode/ok