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
execute if entity @e[predicate=mwj:setting_phase/common/throw_item] run function mwj:system/setting_phase/master/change_to
kill @e[predicate=mwj:setting_phase/common/throw_item]

## Detect choice
execute as @p[predicate=mwj:setting_phase/master/choose_game_rule] run function mwj:system/setting_phase/choose_game_rule/change_to
execute as @p[predicate=mwj:setting_phase/master/choose_item] run function mwj:system/setting_phase/choose_item/common/change_to
execute as @p[predicate=mwj:setting_phase/master/choose_role] run function mwj:system/setting_phase/choose_role/common/change_to
execute as @p[predicate=mwj:setting_phase/master/choose_hide_time] run function mwj:system/setting_phase/choose_hide_time/change_to
execute as @p[predicate=mwj:setting_phase/master/choose_glow_time] run function mwj:system/setting_phase/choose_glow_time/change_to
execute as @p[predicate=mwj:setting_phase/master/choose_game_time] run function mwj:system/setting_phase/choose_game_time/change_to
execute as @p[predicate=mwj:setting_phase/master/choose_distribution_time] run function mwj:system/setting_phase/choose_distribution_time/change_to

execute as @p[predicate=mwj:setting_phase/master/select_cancel] run function mwj:stop
execute as @p[predicate=mwj:setting_phase/master/select_ok] run function mwj:system/setting_phase/master/exit_setting