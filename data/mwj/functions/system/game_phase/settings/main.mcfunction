####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Recount number of roles
function mwj:system/common/roles/count_number_of_roles

## Recount the number of roles
scoreboard players operation #MWL NumOfMasonPair = #MWL NumOfMasons
scoreboard players operation #MWL NumOfMasonPair /= #MWL Num00002
scoreboard players operation #MWL NumOfVillagers += #MWL NumOfRestRoles

## Set scoreboards
function mwj:system/game_phase/settings/set_scoreboards

## Give items
function mwj:system/game_phase/settings/give_items/main

## Set dummy role
scoreboard players set #MWL DummyRoleFlag 0
execute if predicate mwj:game_rule/dummyrole_exist run function mwj:system/game_phase/settings/set_dummy_role

## Set roles
function mwj:system/game_phase/settings/set_roles/main

## Set 2nd role
function mwj:system/game_phase/settings/set_2nd_role

## Set tags
function mwj:system/game_phase/settings/set_tags

## Set messages
function mwj:system/common/message/change_to

## Set players
function mwj:system/game_phase/settings/set_players

## Set bossbar
function mwj:system/game_phase/settings/set_bossbars

## Reset scoreboard
function mwj:system/game_phase/settings/reset_scoreboards

## Game start
scoreboard players set #MWL Phase 11