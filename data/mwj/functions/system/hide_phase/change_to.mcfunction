####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Recount players
function mwj:system/common/roles/recount_roles/main

## Setting games
execute if predicate mwj:system/setting_phase/initial_setting/required_players run function mwj:system/hide_phase/settings/main

## Error game
execute if predicate mwj:system/setting_phase/initial_setting/shortage_players run function mwj:system/finish/error_game_player