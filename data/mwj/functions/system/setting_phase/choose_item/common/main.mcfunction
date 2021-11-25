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
execute if entity @e[predicate=mwj:setting_phase/common/throw_item] run function mwj:system/setting_phase/choose_item/common/set_inventory
kill @e[predicate=mwj:setting_phase/common/throw_item]

## Remove item
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/selected_item/pos1] run function mwj:system/setting_phase/choose_item/switch_item/pos1
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/selected_item/pos2] run function mwj:system/setting_phase/choose_item/switch_item/pos2
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/selected_item/pos3] run function mwj:system/setting_phase/choose_item/switch_item/pos3
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/selected_item/pos4] run function mwj:system/setting_phase/choose_item/switch_item/pos4
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/selected_item/pos5] run function mwj:system/setting_phase/choose_item/switch_item/pos5

## Add item
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/switch_item/pos1] run function mwj:system/setting_phase/choose_item/switch_item/pos1
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/switch_item/pos2] run function mwj:system/setting_phase/choose_item/switch_item/pos2
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/switch_item/pos3] run function mwj:system/setting_phase/choose_item/switch_item/pos3
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/switch_item/pos4] run function mwj:system/setting_phase/choose_item/switch_item/pos4
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/switch_item/pos5] run function mwj:system/setting_phase/choose_item/switch_item/pos5

## Settings
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/prev_page] run function mwj:system/setting_phase/choose_item/common/selected_prevpage
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/next_page] run function mwj:system/setting_phase/choose_item/common/selected_nextpage
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/cancel] run function mwj:system/setting_phase/choose_item/common/selected_cancel
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/reset] run function mwj:system/setting_phase/choose_item/common/selected_reset
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/all_set] run function mwj:system/setting_phase/choose_item/common/selected_all_set
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_item/ok] run function mwj:system/setting_phase/choose_item/common/selected_ok