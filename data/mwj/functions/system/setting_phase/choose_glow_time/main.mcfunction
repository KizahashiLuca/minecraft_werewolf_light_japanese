####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect dropping
execute if entity @e[predicate=mwj:system/setting_phase/common/throw_item] run function mwj:system/setting_phase/choose_glow_time/change_to
kill @e[predicate=mwj:system/setting_phase/common/throw_item]

## Detect choice
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/glow_time_master] run function mwj:system/setting_phase/choose_glow_time/change_to
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/digit_100] run function mwj:system/setting_phase/choose_glow_time/glow_time_add100
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/digit_010] run function mwj:system/setting_phase/choose_glow_time/glow_time_add010
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/digit_001] run function mwj:system/setting_phase/choose_glow_time/glow_time_add001
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/percent] run function mwj:system/setting_phase/choose_glow_time/change_to
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/cancel] run function mwj:system/setting_phase/choose_glow_time/selected_cancel
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/reset] run function mwj:system/setting_phase/choose_glow_time/reset_glow_time
execute as @p[predicate=mwj:system/setting_phase/choose_glow_time/ok] run function mwj:system/setting_phase/choose_glow_time/selected_ok