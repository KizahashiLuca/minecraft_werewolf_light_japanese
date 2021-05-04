####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set scoreboards
function mwj:system/ongame/settings/set_scoreboards

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Recount the Number of Roles
execute if score #MWL SetCasting matches 0 run function mwj:system/common/roles/set_role_number
execute if score #MWL SetCasting matches 0 run function mwj:system/common/roles/set_added_role_number
execute if score #MWL SetCasting matches 0 run function mwj:system/ongame/settings/reset_added_role

execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL TempVariable = #MWL PrevAddedRole
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL PrevAddedRole -= #MWL NumOfRoles
execute if score #MWL SetCasting matches 1 if score #MWL PrevAddedRole matches ..-1 run scoreboard players operation #MWL NumOfVillagers -= #MWL PrevAddedRole
execute if score #MWL SetCasting matches 1 if score #MWL PrevAddedRole matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/main

execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL PrevAddedRole = #MWL NumOfRoles
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason = #MWL NumOfMasons
execute if score #MWL SetCasting matches 1 run scoreboard players set #MWL TempVariable 2
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason /= #MWL TempVariable

## Set dummy role
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL SetDummyRole matches 1 run scoreboard players add #MWL NumOfRoles 1

## Give items
function mwj:system/ongame/settings/give_items/main

## Set dummy roles
execute if score #MWL SetDummyRole matches 1 run function mwj:system/ongame/settings/set_dummy_roles

## Set roles
function mwj:system/ongame/settings/set_roles/main

## Set tags
function mwj:system/ongame/settings/set_tags

## Set messages
function mwj:system/common/message/change_to

## Set players
function mwj:system/ongame/settings/set_players

## Set bossbar
function mwj:system/ongame/settings/set_bossbars

## Reset scoreboards
function mwj:system/ongame/settings/reset_scoreboards

## Game Start
execute if score #MWL Phase matches 10 run scoreboard players set #MWL Phase 11

## Error game
execute if score #MWL Phase matches 0 run function mwj:system/finish/error_game_player