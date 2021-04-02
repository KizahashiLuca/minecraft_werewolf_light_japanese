###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Number the Members
execute as @a[team=Player] run function mwj:system/ongame/settings/set_numbering
tag @a remove numbered

## Decide Players' Role
scoreboard objectives add NumOfRole dummy

## Decide wolves
scoreboard players operation #MWL NumOfRole = #MWL NumOfWolves
function mwj:system/ongame/settings/set_roles/roles/wolf

## Decide clever wolves
scoreboard players operation #MWL NumOfRole = #MWL NumOfClWolves
function mwj:system/ongame/settings/set_roles/roles/clever_wolf

## Decide white wolves
scoreboard players operation #MWL NumOfRole = #MWL NumOfWhWolves
function mwj:system/ongame/settings/set_roles/roles/white_wolf

## Decide madmans
scoreboard players operation #MWL NumOfRole = #MWL NumOfMadmans
execute if score #MWL DummyRole matches 1 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/madman

## Decide fanatics
scoreboard players operation #MWL NumOfRole = #MWL NumOfFanatics
execute if score #MWL DummyRole matches 2 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/fanatic

## Decide foxes
scoreboard players operation #MWL NumOfRole = #MWL NumOfFoxes
function mwj:system/ongame/settings/set_roles/roles/fox

## Decide immoralists
scoreboard players operation #MWL NumOfRole = #MWL NumOfImmorals
execute if score #MWL DummyRole matches 3 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/immoralist

## Decide villagers
scoreboard players operation #MWL NumOfRole = #MWL NumOfVillagers
execute if score #MWL DummyRole matches 4 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/villager

## Decide masons
scoreboard players operation #MWL NumOfRole = #MWL NumOfMasons
execute if score #MWL DummyRole matches 5 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/mason

## Decide bakeries
scoreboard players operation #MWL NumOfRole = #MWL NumOfBakeries
execute if score #MWL DummyRole matches 6 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/bakery

## Decide seers
scoreboard players operation #MWL NumOfRole = #MWL NumOfSeers
execute if score #MWL DummyRole matches 7 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/seer

## Decide fake seers
scoreboard players operation #MWL NumOfRole = #MWL NumOfFkSeers
execute if score #MWL DummyRole matches 8 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/fake_seer

## Decide sages
scoreboard players operation #MWL NumOfRole = #MWL NumOfSages
execute if score #MWL DummyRole matches 9 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/sage

## Decide mediums
scoreboard players operation #MWL NumOfRole = #MWL NumOfMediums
execute if score #MWL DummyRole matches 10 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/medium

## Decide detectives
scoreboard players operation #MWL NumOfRole = #MWL NumOfDetectives
execute if score #MWL DummyRole matches 11 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/detective

## Decide thieves
scoreboard players operation #MWL NumOfRole = #MWL NumOfThieves
execute if score #MWL DummyRole matches 12 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/thief

## Decide little reds
scoreboard players operation #MWL NumOfRole = #MWL NumOfLtReds
execute if score #MWL DummyRole matches 13 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/ongame/settings/set_roles/roles/little_red

## Decide cats
scoreboard players operation #MWL NumOfRole = #MWL NumOfCats
function mwj:system/ongame/settings/set_roles/roles/cat


## Decide Mason Pair
scoreboard players operation #MWL NumOfRole = #MWL AddedMason
function mwj:system/ongame/settings/set_roles/pairs/mason
scoreboard objectives remove NumOfRole
