####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Log-in midtime of setting phase
execute as @a[predicate=mwj:system/common/en_route/not_spectator] run function mwj:system/common/en_route/not_game_phase
execute as @a[predicate=mwj:system/common/en_route/spectator] run team leave @s

## Error game
execute if predicate mwj:system/setting_phase/initial_setting/shortage_players run function mwj:system/finish/error_game_player

## Setting phase
execute if predicate mwj:phase/setting_phase/choose_role/master run function mwj:system/setting_phase/choose_role/common/main
execute if predicate mwj:phase/setting_phase/choose_item/master run function mwj:system/setting_phase/choose_item/common/main
execute if predicate mwj:phase/setting_phase/choose_game_rule run function mwj:system/setting_phase/choose_game_rule/main
execute if predicate mwj:phase/setting_phase/choose_game_time run function mwj:system/setting_phase/choose_game_time/main
execute if predicate mwj:phase/setting_phase/choose_glow_time run function mwj:system/setting_phase/choose_glow_time/main
execute if predicate mwj:phase/setting_phase/choose_hide_time run function mwj:system/setting_phase/choose_hide_time/main
execute if predicate mwj:phase/setting_phase/master run function mwj:system/setting_phase/master/main