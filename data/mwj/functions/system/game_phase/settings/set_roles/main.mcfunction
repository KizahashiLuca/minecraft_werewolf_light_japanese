####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Number the Members
execute as @a[predicate=mwj:player/player] run function mwj:system/game_phase/settings/set_numbering
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
execute if predicate mwj:system/game_phase/settings/set_roles/roles/madman run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/madman

## Decide fanatics
scoreboard players operation #MWL PlayerRole = #MWL NumOfFanatics
execute if predicate mwj:system/game_phase/settings/set_roles/roles/fanatic run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/fanatic

## Decide foxes
scoreboard players operation #MWL PlayerRole = #MWL NumOfFoxes
function mwj:system/game_phase/settings/set_roles/roles/fox

## Decide immoralists
scoreboard players operation #MWL PlayerRole = #MWL NumOfImmorals
execute if predicate mwj:system/game_phase/settings/set_roles/roles/immoralist run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/immoralist

## Decide villagers
scoreboard players operation #MWL PlayerRole = #MWL NumOfVillagers
execute if predicate mwj:system/game_phase/settings/set_roles/roles/villager run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/villager

## Decide bakeries
scoreboard players operation #MWL PlayerRole = #MWL NumOfBakeries
execute if predicate mwj:system/game_phase/settings/set_roles/roles/bakery run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/bakery

## Decide bakeries
scoreboard players operation #MWL PlayerRole = #MWL NumOfLycants
execute if predicate mwj:system/game_phase/settings/set_roles/roles/lycanthrope run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/lycanthrope

## Decide masons
scoreboard players operation #MWL PlayerRole = #MWL NumOfMasons
execute if predicate mwj:system/game_phase/settings/set_roles/roles/mason run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/mason

## Decide seers
scoreboard players operation #MWL PlayerRole = #MWL NumOfSeers
execute if predicate mwj:system/game_phase/settings/set_roles/roles/seer run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/seer

## Decide fake seers
scoreboard players operation #MWL PlayerRole = #MWL NumOfFkSeers
execute if predicate mwj:system/game_phase/settings/set_roles/roles/fake_seer run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/fake_seer

## Decide sages
scoreboard players operation #MWL PlayerRole = #MWL NumOfSages
execute if predicate mwj:system/game_phase/settings/set_roles/roles/sage run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/sage

## Decide mediums
scoreboard players operation #MWL PlayerRole = #MWL NumOfMediums
execute if predicate mwj:system/game_phase/settings/set_roles/roles/medium run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/medium

## Decide detectives
scoreboard players operation #MWL PlayerRole = #MWL NumOfDetectives
execute if predicate mwj:system/game_phase/settings/set_roles/roles/detective run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/detective

## Decide thieves
scoreboard players operation #MWL PlayerRole = #MWL NumOfThieves
execute if predicate mwj:system/game_phase/settings/set_roles/roles/thief run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/thief

## Decide little reds
scoreboard players operation #MWL PlayerRole = #MWL NumOfLtReds
execute if predicate mwj:system/game_phase/settings/set_roles/roles/little_red run scoreboard players remove #MWL PlayerRole 1
function mwj:system/game_phase/settings/set_roles/roles/little_red

## Decide cats
scoreboard players operation #MWL PlayerRole = #MWL NumOfCats
function mwj:system/game_phase/settings/set_roles/roles/cat

## Set Variables for Mason Number
scoreboard players set @a[predicate=mwj:system/game_phase/settings/set_roles/mason_pair] MasonPair 0
scoreboard players set #MWL MasonPair 1
## Decide Mason Pair
scoreboard players operation #MWL PlayerRole = #MWL NumOfMasonPair
function mwj:system/game_phase/settings/set_roles/pairs/mason