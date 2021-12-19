####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Number the Members
execute as @a[team=Player] run function mwj:system/game_phase/settings/set_numbering
tag @a remove numbered

## Decide wolves
scoreboard players operation #MWL PlayerRole = #MWL NumOfWolves
function mwj:system/game_phase/settings/set_roles/roles/wolf

## Decide clever wolves
scoreboard players operation #MWL PlayerRole = #MWL NumOfClWolves
function mwj:system/game_phase/settings/set_roles/roles/clever_wolf

## Decide white wolves
scoreboard players operation #MWL PlayerRole = #MWL NumOfWhWolves
function mwj:system/game_phase/settings/set_roles/roles/white_wolf

## Decide madmans
scoreboard players operation #MWL PlayerRole = #MWL NumOfMadmans
execute if score #MWL SetDummyRole matches 1 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/madman

## Decide fanatics
scoreboard players operation #MWL PlayerRole = #MWL NumOfFanatics
execute if score #MWL SetDummyRole matches 2 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/fanatic

## Decide foxes
scoreboard players operation #MWL PlayerRole = #MWL NumOfFoxes
function mwj:system/game_phase/settings/set_roles/roles/fox

## Decide immoralists
scoreboard players operation #MWL PlayerRole = #MWL NumOfImmorals
execute if score #MWL SetDummyRole matches 3 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/immoralist

## Decide villagers
scoreboard players operation #MWL PlayerRole = #MWL NumOfVillagers
execute if score #MWL SetDummyRole matches 4 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/villager

## Decide bakeries
scoreboard players operation #MWL PlayerRole = #MWL NumOfBakeries
execute if score #MWL SetDummyRole matches 5 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/bakery

## Decide bakeries
scoreboard players operation #MWL PlayerRole = #MWL NumOfLycants
execute if score #MWL SetDummyRole matches 6 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/lycanthrope

## Decide masons
scoreboard players operation #MWL PlayerRole = #MWL NumOfMasons
execute if score #MWL SetDummyRole matches 7 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/mason

## Decide seers
scoreboard players operation #MWL PlayerRole = #MWL NumOfSeers
execute if score #MWL SetDummyRole matches 8 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/seer

## Decide fake seers
scoreboard players operation #MWL PlayerRole = #MWL NumOfFkSeers
execute if score #MWL SetDummyRole matches 9 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/fake_seer

## Decide sages
scoreboard players operation #MWL PlayerRole = #MWL NumOfSages
execute if score #MWL SetDummyRole matches 10 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/sage

## Decide mediums
scoreboard players operation #MWL PlayerRole = #MWL NumOfMediums
execute if score #MWL SetDummyRole matches 11 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/medium

## Decide detectives
scoreboard players operation #MWL PlayerRole = #MWL NumOfDetectives
execute if score #MWL SetDummyRole matches 12 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/detective

## Decide thieves
scoreboard players operation #MWL PlayerRole = #MWL NumOfThieves
execute if score #MWL SetDummyRole matches 13 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/thief

## Decide little reds
scoreboard players operation #MWL PlayerRole = #MWL NumOfLtReds
execute if score #MWL SetDummyRole matches 14 run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/little_red

## Decide cats
scoreboard players operation #MWL PlayerRole = #MWL NumOfCats
function mwj:system/game_phase/settings/set_roles/roles/cat

## Set Variables for Mason Number
scoreboard players set @a[scores={CurrentRole=24}] MasonPair 0
scoreboard players set #MWL MasonPair 1
## Decide Mason Pair
scoreboard players operation #MWL PlayerRole = #MWL NumOfMasonPair
function mwj:system/game_phase/settings/set_roles/pairs/mason