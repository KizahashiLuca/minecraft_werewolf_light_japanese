####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect dropping
execute if entity @e[predicate=mwj:system/setting_phase/common/throw_item] run function mwj:system/setting_phase/choose_hide_time/change_to
kill @e[predicate=mwj:system/setting_phase/common/throw_item]

## Detect choice
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/hide_time_master] run function mwj:system/setting_phase/choose_hide_time/change_to
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/digit_100] run function mwj:system/setting_phase/choose_hide_time/hide_time_add100
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/digit_010] run function mwj:system/setting_phase/choose_hide_time/hide_time_add010
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/digit_001] run function mwj:system/setting_phase/choose_hide_time/hide_time_add001
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/second] run function mwj:system/setting_phase/choose_hide_time/change_to
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/cancel] run function mwj:system/setting_phase/choose_hide_time/selected_cancel
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/reset] run function mwj:system/setting_phase/choose_hide_time/reset_hide_time
execute as @p[predicate=mwj:system/setting_phase/choose_hide_time/ok] run function mwj:system/setting_phase/choose_hide_time/selected_ok