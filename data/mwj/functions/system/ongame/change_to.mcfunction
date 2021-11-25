####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Sound
execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1

## Set scoreboards
function mwj:system/ongame/settings/set_scoreboards

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Recount players
function mwj:system/common/roles/recount_roles/main

## Recount number of roles
function mwj:system/common/roles/count_number_of_roles

## Recount the Number of Roles
scoreboard players operation #MWL NumOfMasonPair = #MWL NumOfMasons
scoreboard players set #MWL TempVariable 2
scoreboard players operation #MWL NumOfMasonPair /= #MWL TempVariable

## Give items
function mwj:system/ongame/settings/give_items/main

## Set dummy roles
scoreboard players set #MWL DummyRoleFlag 0
execute if score #MWL DummyRoleMode matches 1 run function mwj:system/ongame/settings/set_dummy_roles

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
execute if score #MWL Phase matches 100 run function mwj:system/finish/error_game_player