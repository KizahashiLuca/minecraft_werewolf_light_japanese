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
execute if entity @e[predicate=mwj:setting_phase/common/throw_item] run function mwj:system/setting_phase/choose_hide_time/set_inventory
kill @e[predicate=mwj:setting_phase/common/throw_item]

## Change to each mode
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/hide_time_master] run function mwj:system/setting_phase/choose_hide_time/set_inventory
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/digit_100] run function mwj:system/setting_phase/choose_hide_time/hide_time_add100
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/digit_010] run function mwj:system/setting_phase/choose_hide_time/hide_time_add010
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/digit_001] run function mwj:system/setting_phase/choose_hide_time/hide_time_add001
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/second] run function mwj:system/setting_phase/choose_hide_time/set_inventory
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/cancel] run function mwj:system/setting_phase/choose_hide_time/selected_cancel
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/reset] run function mwj:system/setting_phase/choose_hide_time/reset_hide_time
execute as @p[tag=Host,predicate=mwj:setting_phase/choose_hide_time/ok] run function mwj:system/setting_phase/choose_hide_time/selected_ok