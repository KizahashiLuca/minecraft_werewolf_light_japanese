####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect dropping
execute if entity @e[predicate=mwj:system/setting_phase/common/throw_item] run function mwj:system/setting_phase/choose_game_rule/change_to
kill @e[predicate=mwj:system/setting_phase/common/throw_item]

## Detect choice
execute as @p[predicate=mwj:system/setting_phase/choose_game_rule/game_mode] run function mwj:system/setting_phase/choose_game_rule/change_game_mode
execute as @p[predicate=mwj:system/setting_phase/choose_game_rule/dummyrole_mode] run function mwj:system/setting_phase/choose_game_rule/change_dummyrole_mode
execute as @p[predicate=mwj:system/setting_phase/choose_game_rule/secondrole_mode] run function mwj:system/setting_phase/choose_game_rule/change_secondrole_mode
execute as @p[predicate=mwj:system/setting_phase/choose_game_rule/cancel] run function mwj:system/setting_phase/choose_game_rule/selected_cancel
execute as @p[predicate=mwj:system/setting_phase/choose_game_rule/reset] run function mwj:system/setting_phase/choose_game_rule/reset_game_rule
execute as @p[predicate=mwj:system/setting_phase/choose_game_rule/ok] run function mwj:system/setting_phase/choose_game_rule/selected_ok