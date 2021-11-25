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

## Set items
loot replace entity @p[tag=Host] inventory.2 loot mwj:setting/choose_item/selected_item/pos1
loot replace entity @p[tag=Host] inventory.3 loot mwj:setting/choose_item/selected_item/pos2
loot replace entity @p[tag=Host] inventory.4 loot mwj:setting/choose_item/selected_item/pos3
loot replace entity @p[tag=Host] inventory.5 loot mwj:setting/choose_item/selected_item/pos4
loot replace entity @p[tag=Host] inventory.6 loot mwj:setting/choose_item/selected_item/pos5

loot replace entity @p[tag=Host] inventory.9 loot mwj:setting/common/white_banner_left
loot replace entity @p[tag=Host] inventory.11 loot mwj:setting/choose_item/switch_item/pos1
loot replace entity @p[tag=Host] inventory.12 loot mwj:setting/choose_item/switch_item/pos2
loot replace entity @p[tag=Host] inventory.13 loot mwj:setting/choose_item/switch_item/pos3
loot replace entity @p[tag=Host] inventory.14 loot mwj:setting/choose_item/switch_item/pos4
loot replace entity @p[tag=Host] inventory.15 loot mwj:setting/choose_item/switch_item/pos5
loot replace entity @p[tag=Host] inventory.17 loot mwj:setting/common/white_banner_right

loot replace entity @p[tag=Host] inventory.19 loot mwj:setting/choose_item/cancel
loot replace entity @p[tag=Host] inventory.21 loot mwj:setting/choose_item/reset
loot replace entity @p[tag=Host] inventory.23 loot mwj:setting/choose_item/all_set
loot replace entity @p[tag=Host] inventory.25 loot mwj:setting/choose_item/ok