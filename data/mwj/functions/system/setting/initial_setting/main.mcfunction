###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Change gamerules
function mwj:system/setting/initial_setting/set_gamerules

## Remove storages
execute if score #MWL Version matches 16.. run function mwj:system/finish/remove_storages

## Remove bossbars
function mwj:system/finish/remove_bossbars

## Remove entities
function mwj:system/finish/remove_entities

## Remove entities
function mwj:system/finish/remove_tags

## Remove teams
function mwj:system/finish/remove_teams

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Set Team
function mwj:system/setting/initial_setting/set_teams

## Set Scoreboard
function mwj:system/setting/initial_setting/set_scoreboards

## Set Role Number
function mwj:system/common/roles/set_role_number
function mwj:system/common/roles/set_added_role_number
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole

## Set Title
function mwj:system/setting/initial_setting/set_messages

## Set Inventory
function mwj:system/setting/choose_mode/change_to