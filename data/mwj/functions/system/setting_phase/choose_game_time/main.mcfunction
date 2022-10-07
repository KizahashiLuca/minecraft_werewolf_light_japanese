####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect dropping
execute if entity @e[predicate=mwj:system/setting_phase/common/throw_item] run function mwj:system/setting_phase/choose_game_time/change_to
kill @e[predicate=mwj:system/setting_phase/common/throw_item]

## Detect choice
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/game_time_master] run function mwj:system/setting_phase/choose_game_time/change_to
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/digit_100] run function mwj:system/setting_phase/choose_game_time/game_time_add100
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/digit_010] run function mwj:system/setting_phase/choose_game_time/game_time_add010
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/digit_001] run function mwj:system/setting_phase/choose_game_time/game_time_add001
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/minute] run function mwj:system/setting_phase/choose_game_time/change_to
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/cancel] run function mwj:system/setting_phase/choose_game_time/selected_cancel
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/reset] run function mwj:system/setting_phase/choose_game_time/reset_game_time
execute as @p[predicate=mwj:system/setting_phase/choose_game_time/ok] run function mwj:system/setting_phase/choose_game_time/selected_ok