####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear Inventory
clear @p[predicate=mwj:player/host]

## Recount players
function mwj:system/common/roles/recount_roles/main

## Count number of roles
function mwj:system/common/roles/count_number_of_roles

## Set items
loot replace entity @p[predicate=mwj:player/host] inventory.2 loot mwj:system/setting_phase/choose_role/remove_role/pos1
loot replace entity @p[predicate=mwj:player/host] inventory.3 loot mwj:system/setting_phase/choose_role/remove_role/pos2
loot replace entity @p[predicate=mwj:player/host] inventory.4 loot mwj:system/setting_phase/choose_role/remove_role/pos3
loot replace entity @p[predicate=mwj:player/host] inventory.5 loot mwj:system/setting_phase/choose_role/remove_role/pos4
loot replace entity @p[predicate=mwj:player/host] inventory.6 loot mwj:system/setting_phase/choose_role/remove_role/pos5

loot replace entity @p[predicate=mwj:player/host] inventory.9 loot mwj:system/setting_phase/common/white_banner_left
loot replace entity @p[predicate=mwj:player/host] inventory.11 loot mwj:system/setting_phase/choose_role/add_role/pos1
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:system/setting_phase/choose_role/add_role/pos2
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:system/setting_phase/choose_role/add_role/pos3
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:system/setting_phase/choose_role/add_role/pos4
loot replace entity @p[predicate=mwj:player/host] inventory.15 loot mwj:system/setting_phase/choose_role/add_role/pos5
loot replace entity @p[predicate=mwj:player/host] inventory.17 loot mwj:system/setting_phase/common/white_banner_right

loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:system/setting_phase/common/cancel
loot replace entity @p[predicate=mwj:player/host] inventory.21 loot mwj:system/setting_phase/common/all_remove
loot replace entity @p[predicate=mwj:player/host] inventory.22 loot mwj:system/setting_phase/choose_role/recommend
loot replace entity @p[predicate=mwj:player/host] inventory.23 loot mwj:system/setting_phase/choose_role/num_of_rest
loot replace entity @p[predicate=mwj:system/setting_phase/choose_role/set_ok/main] inventory.25 loot mwj:system/setting_phase/common/ok