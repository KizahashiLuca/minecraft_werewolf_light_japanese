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
clear @p[tag=Host]

## Recount players
function mwj:system/common/roles/recount_roles/main

## Count number of roles
function mwj:system/common/roles/count_number_of_roles

## Set items
loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/choose_role/remove_role/pos1
loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/choose_role/remove_role/pos2
loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/choose_role/remove_role/pos3
loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/choose_role/remove_role/pos4
loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/choose_role/remove_role/pos5

loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/common/white_banner_left
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/choose_role/add_role/pos1
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/choose_role/add_role/pos2
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/choose_role/add_role/pos3
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/choose_role/add_role/pos4
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/choose_role/add_role/pos5
loot replace entity @p[tag=Host] inventory.17 loot mwj:setting/common/white_banner_right

loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/choose_role/cancel
loot replace entity @p[tag=Host] inventory.21 loot mwj:setting/choose_role/reset
loot replace entity @p[tag=Host] inventory.22 loot mwj:setting/choose_role/recommend
loot replace entity @p[tag=Host] inventory.23 loot mwj:setting/choose_role/num_of_rest
loot replace entity @p[tag=Host,predicate=mwj:setting/choose_role/set_ok/main] inventory.25 loot mwj:setting/choose_role/ok