####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change gamerules
function mwj:system/setting_phase/initial_setting/set_gamerules

## Remove storages
function mwj:system/finish/remove_storages

## Remove bossbars
function mwj:system/finish/remove_bossbars

## Remove entities
function mwj:system/finish/remove_entities

## Remove tags
function mwj:system/finish/remove_tags

## Remove teams
function mwj:system/finish/remove_teams

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Set Team
function mwj:system/setting_phase/initial_setting/set_teams

## Set Scoreboard
function mwj:system/setting_phase/initial_setting/set_scoreboards

## Set Role Number
function mwj:system/common/roles/reset_roles
function mwj:system/common/roles/set_role_number
function mwj:system/common/roles/set_prev_roles

## Set Title
function mwj:system/setting_phase/initial_setting/set_messages

## Set Inventory
function mwj:system/setting_phase/choose_mode/change_to