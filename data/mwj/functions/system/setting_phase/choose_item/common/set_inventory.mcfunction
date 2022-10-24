####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Clear Inventory
clear @p[predicate=mwj:player/host]

## Set items
loot replace entity @p[predicate=mwj:player/host] inventory.2 loot mwj:system/setting_phase/choose_item/selected_item/pos1
loot replace entity @p[predicate=mwj:player/host] inventory.3 loot mwj:system/setting_phase/choose_item/selected_item/pos2
loot replace entity @p[predicate=mwj:player/host] inventory.4 loot mwj:system/setting_phase/choose_item/selected_item/pos3
loot replace entity @p[predicate=mwj:player/host] inventory.5 loot mwj:system/setting_phase/choose_item/selected_item/pos4
loot replace entity @p[predicate=mwj:player/host] inventory.6 loot mwj:system/setting_phase/choose_item/selected_item/pos5

loot replace entity @p[predicate=mwj:player/host] inventory.9 loot mwj:system/setting_phase/common/white_banner_left
loot replace entity @p[predicate=mwj:player/host] inventory.11 loot mwj:system/setting_phase/choose_item/switch_item/pos1
loot replace entity @p[predicate=mwj:player/host] inventory.12 loot mwj:system/setting_phase/choose_item/switch_item/pos2
loot replace entity @p[predicate=mwj:player/host] inventory.13 loot mwj:system/setting_phase/choose_item/switch_item/pos3
loot replace entity @p[predicate=mwj:player/host] inventory.14 loot mwj:system/setting_phase/choose_item/switch_item/pos4
loot replace entity @p[predicate=mwj:player/host] inventory.15 loot mwj:system/setting_phase/choose_item/switch_item/pos5
loot replace entity @p[predicate=mwj:player/host] inventory.17 loot mwj:system/setting_phase/common/white_banner_right

loot replace entity @p[predicate=mwj:player/host] inventory.19 loot mwj:system/setting_phase/common/cancel
loot replace entity @p[predicate=mwj:player/host] inventory.21 loot mwj:system/setting_phase/common/all_remove
loot replace entity @p[predicate=mwj:player/host] inventory.23 loot mwj:system/setting_phase/choose_item/all_set
loot replace entity @p[predicate=mwj:player/host] inventory.25 loot mwj:system/setting_phase/common/ok