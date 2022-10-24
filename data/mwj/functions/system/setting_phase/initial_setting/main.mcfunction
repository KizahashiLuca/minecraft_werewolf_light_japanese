####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Remove storages
function mwj:system/finish/remove_storages

## Remove tags
function mwj:system/finish/remove_tags

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Set gamerules
function mwj:system/setting_phase/initial_setting/set_gamerules

## Set scoreboards
function mwj:system/setting_phase/initial_setting/add_scoreboards/main
function mwj:system/setting_phase/initial_setting/set_scoreboards/main

## Set teams
function mwj:system/setting_phase/initial_setting/set_teams

## Set entities
function mwj:system/setting_phase/initial_setting/set_entities

## Set bossbars
function mwj:system/setting_phase/initial_setting/set_bossbars

## Detect version
function mwj:system/setting_phase/initial_setting/detect_version

## Count players
function mwj:system/common/count_players

## Set role number
function mwj:system/common/roles/reset_roles
function mwj:system/common/roles/set_role_number
function mwj:system/common/roles/set_prev_roles

## Stop the game
execute if predicate mwj:system/setting_phase/initial_setting/shortage_players run function mwj:system/finish/error_game_player
execute if predicate mwj:system/setting_phase/initial_setting/sufficient_players_but_unsupported_version run function mwj:system/finish/error_game_version

## Start setting phase
execute if predicate mwj:system/setting_phase/initial_setting/sufficient_players_and_version run function mwj:system/setting_phase/initial_setting/send_messages