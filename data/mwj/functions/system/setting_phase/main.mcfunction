####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Log-in midtime of setting phase
execute as @a[tag=!Host,team=!Player,gamemode=!spectator] run function mwj:system/common/en_route/not_game_phase
execute as @a[tag=!Host,team=Player,gamemode=spectator] run team leave @s

## Setting phase
execute if predicate mwj:phase/choose_role run function mwj:system/setting_phase/choose_role/common/main
execute if predicate mwj:phase/choose_item run function mwj:system/setting_phase/choose_item/common/main
execute if predicate mwj:phase/choose_game_rule run function mwj:system/setting_phase/choose_game_rule/main
execute if predicate mwj:phase/choose_game_time run function mwj:system/setting_phase/choose_game_time/main
execute if predicate mwj:phase/choose_glow_time run function mwj:system/setting_phase/choose_glow_time/main
execute if predicate mwj:phase/choose_hide_time run function mwj:system/setting_phase/choose_hide_time/main
execute if predicate mwj:phase/choose_mode run function mwj:system/setting_phase/choose_mode/main