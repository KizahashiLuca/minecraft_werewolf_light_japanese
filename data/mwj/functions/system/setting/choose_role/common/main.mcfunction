####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Dropping
execute if entity @e[predicate=mwj:setting/common/throw_item] run function mwj:system/setting/choose_role/common/set_inventory
kill @e[predicate=mwj:setting/common/throw_item]

## Remove role
execute store result score #MWL SelectRolePos1 run data get entity @p[tag=Host] Inventory[{Slot:11b}].Count 1.0
execute as @p[tag=Host,predicate=mwj:setting/choose_role/remove_role/pos1] run function mwj:system/setting/choose_role/remove_role/pos1
execute store result score #MWL SelectRolePos2 run data get entity @p[tag=Host] Inventory[{Slot:12b}].Count 1.0
execute as @p[tag=Host,predicate=mwj:setting/choose_role/remove_role/pos2] run function mwj:system/setting/choose_role/remove_role/pos2
execute store result score #MWL SelectRolePos3 run data get entity @p[tag=Host] Inventory[{Slot:13b}].Count 1.0
execute as @p[tag=Host,predicate=mwj:setting/choose_role/remove_role/pos3] run function mwj:system/setting/choose_role/remove_role/pos3
execute store result score #MWL SelectRolePos4 run data get entity @p[tag=Host] Inventory[{Slot:14b}].Count 1.0
execute as @p[tag=Host,predicate=mwj:setting/choose_role/remove_role/pos4] run function mwj:system/setting/choose_role/remove_role/pos4
execute store result score #MWL SelectRolePos5 run data get entity @p[tag=Host] Inventory[{Slot:15b}].Count 1.0
execute as @p[tag=Host,predicate=mwj:setting/choose_role/remove_role/pos5] run function mwj:system/setting/choose_role/remove_role/pos5

## Add role
execute as @p[tag=Host,predicate=mwj:setting/choose_role/add_role/pos1] run function mwj:system/setting/choose_role/add_role/pos1
execute as @p[tag=Host,predicate=mwj:setting/choose_role/add_role/pos2] run function mwj:system/setting/choose_role/add_role/pos2
execute as @p[tag=Host,predicate=mwj:setting/choose_role/add_role/pos3] run function mwj:system/setting/choose_role/add_role/pos3
execute as @p[tag=Host,predicate=mwj:setting/choose_role/add_role/pos4] run function mwj:system/setting/choose_role/add_role/pos4
execute as @p[tag=Host,predicate=mwj:setting/choose_role/add_role/pos5] run function mwj:system/setting/choose_role/add_role/pos5

## Settings
execute as @p[tag=Host,predicate=mwj:setting/choose_role/prev_page] run function mwj:system/setting/choose_role/common/selected_prevpage
execute as @p[tag=Host,predicate=mwj:setting/choose_role/next_page] run function mwj:system/setting/choose_role/common/selected_nextpage
execute as @p[tag=Host,predicate=mwj:setting/choose_role/cancel] run function mwj:system/setting/choose_role/common/selected_cancel
execute as @p[tag=Host,predicate=mwj:setting/choose_role/reset] run function mwj:system/setting/choose_role/common/selected_reset
execute as @p[tag=Host,predicate=mwj:setting/choose_role/recommend] run function mwj:system/setting/choose_role/common/selected_recommend

execute store result score #MWL SelectNumOfRest run data get entity @p[tag=Host] Inventory[{Slot:32b}].Count 1.0
execute as @p[tag=Host,predicate=mwj:setting/choose_role/num_of_rest] run function mwj:system/setting/choose_role/common/change_to
execute as @p[tag=Host,predicate=mwj:setting/choose_role/ok] run function mwj:system/setting/choose_role/common/selected_ok