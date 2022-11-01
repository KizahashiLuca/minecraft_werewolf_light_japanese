####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Dropping
execute if entity @e[predicate=mwj:system/setting_phase/common/throw_item] run function mwj:system/setting_phase/choose_role/common/set_inventory
kill @e[predicate=mwj:system/setting_phase/common/throw_item]

## Remove role
execute store result score #MWL SelectRolePos1 run data get entity @p[predicate=mwj:player/host] Inventory[{Slot:11b}].Count 1.0
execute as @p[predicate=mwj:system/setting_phase/choose_role/remove_role/pos1] run function mwj:system/setting_phase/choose_role/remove_role/pos1
execute store result score #MWL SelectRolePos2 run data get entity @p[predicate=mwj:player/host] Inventory[{Slot:12b}].Count 1.0
execute as @p[predicate=mwj:system/setting_phase/choose_role/remove_role/pos2] run function mwj:system/setting_phase/choose_role/remove_role/pos2
execute store result score #MWL SelectRolePos3 run data get entity @p[predicate=mwj:player/host] Inventory[{Slot:13b}].Count 1.0
execute as @p[predicate=mwj:system/setting_phase/choose_role/remove_role/pos3] run function mwj:system/setting_phase/choose_role/remove_role/pos3
execute store result score #MWL SelectRolePos4 run data get entity @p[predicate=mwj:player/host] Inventory[{Slot:14b}].Count 1.0
execute as @p[predicate=mwj:system/setting_phase/choose_role/remove_role/pos4] run function mwj:system/setting_phase/choose_role/remove_role/pos4
execute store result score #MWL SelectRolePos5 run data get entity @p[predicate=mwj:player/host] Inventory[{Slot:15b}].Count 1.0
execute as @p[predicate=mwj:system/setting_phase/choose_role/remove_role/pos5] run function mwj:system/setting_phase/choose_role/remove_role/pos5

## Add role
execute as @p[predicate=mwj:system/setting_phase/choose_role/add_role/pos1] run function mwj:system/setting_phase/choose_role/add_role/pos1
execute as @p[predicate=mwj:system/setting_phase/choose_role/add_role/pos2] run function mwj:system/setting_phase/choose_role/add_role/pos2
execute as @p[predicate=mwj:system/setting_phase/choose_role/add_role/pos3] run function mwj:system/setting_phase/choose_role/add_role/pos3
execute as @p[predicate=mwj:system/setting_phase/choose_role/add_role/pos4] run function mwj:system/setting_phase/choose_role/add_role/pos4
execute as @p[predicate=mwj:system/setting_phase/choose_role/add_role/pos5] run function mwj:system/setting_phase/choose_role/add_role/pos5

## Settings
execute as @p[predicate=mwj:system/setting_phase/choose_role/prev_page] run function mwj:system/setting_phase/choose_role/common/selected_prevpage
execute as @p[predicate=mwj:system/setting_phase/choose_role/next_page] run function mwj:system/setting_phase/choose_role/common/selected_nextpage
execute as @p[predicate=mwj:system/setting_phase/choose_role/cancel] run function mwj:system/setting_phase/choose_role/common/selected_cancel
execute as @p[predicate=mwj:system/setting_phase/choose_role/all_remove] run function mwj:system/setting_phase/choose_role/common/selected_all_remove
execute as @p[predicate=mwj:system/setting_phase/choose_role/recommend] run function mwj:system/setting_phase/choose_role/common/selected_recommend

execute store result score #MWL SelectNumOfRest run data get entity @p[predicate=mwj:player/host] Inventory[{Slot:32b}].Count 1.0
execute as @p[predicate=mwj:system/setting_phase/choose_role/num_of_rest] run function mwj:system/setting_phase/choose_role/common/change_to
execute as @p[predicate=mwj:system/setting_phase/choose_role/ok] run function mwj:system/setting_phase/choose_role/common/selected_ok