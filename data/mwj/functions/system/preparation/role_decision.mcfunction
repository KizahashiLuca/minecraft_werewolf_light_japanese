###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Number the Members
execute as @a[team=Player] run function mwj:system/preparation/numbering
tag @a remove numbered

## Decide Players' Role
scoreboard objectives add NumOfRole dummy

## Decide wolves
scoreboard players operation #MWL NumOfRole = #MWL NumOfWolves
function mwj:system/preparation/role_decision/wolf

## Decide clever wolves
scoreboard players operation #MWL NumOfRole = #MWL NumOfClWolves
function mwj:system/preparation/role_decision/clever_wolf

## Decide white wolves
scoreboard players operation #MWL NumOfRole = #MWL NumOfWhWolves
function mwj:system/preparation/role_decision/white_wolf

## Decide madmans
scoreboard players operation #MWL NumOfRole = #MWL NumOfMadmans
execute if score #MWL DummyRole matches 1 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/madman

## Decide fanatics
scoreboard players operation #MWL NumOfRole = #MWL NumOfFanatics
execute if score #MWL DummyRole matches 2 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/fanatic

## Decide foxes
scoreboard players operation #MWL NumOfRole = #MWL NumOfFoxes
function mwj:system/preparation/role_decision/fox

## Decide immoralists
scoreboard players operation #MWL NumOfRole = #MWL NumOfImmorals
execute if score #MWL DummyRole matches 3 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/immoralist

## Decide villagers
scoreboard players operation #MWL NumOfRole = #MWL NumOfVillagers
execute if score #MWL DummyRole matches 4 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/villager

## Decide masons
scoreboard players operation #MWL NumOfRole = #MWL NumOfMasons
execute if score #MWL DummyRole matches 5 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/mason

## Decide bakeries
scoreboard players operation #MWL NumOfRole = #MWL NumOfBakeries
execute if score #MWL DummyRole matches 6 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/bakery

## Decide seers
scoreboard players operation #MWL NumOfRole = #MWL NumOfSeers
execute if score #MWL DummyRole matches 7 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/seer

## Decide fake seers
scoreboard players operation #MWL NumOfRole = #MWL NumOfFkSeers
execute if score #MWL DummyRole matches 8 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/fake_seer

## Decide sages
scoreboard players operation #MWL NumOfRole = #MWL NumOfSages
execute if score #MWL DummyRole matches 9 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/sage

## Decide mediums
scoreboard players operation #MWL NumOfRole = #MWL NumOfMediums
execute if score #MWL DummyRole matches 10 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/medium

## Decide detectives
scoreboard players operation #MWL NumOfRole = #MWL NumOfDetectives
execute if score #MWL DummyRole matches 11 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/detective

## Decide thieves
scoreboard players operation #MWL NumOfRole = #MWL NumOfThieves
execute if score #MWL DummyRole matches 12 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/thief

## Decide little reds
scoreboard players operation #MWL NumOfRole = #MWL NumOfLtReds
execute if score #MWL DummyRole matches 13 run scoreboard players remove #MWL NumOfRole 1
function mwj:system/preparation/role_decision/little_red

## Decide cats
scoreboard players operation #MWL NumOfRole = #MWL NumOfCats
function mwj:system/preparation/role_decision/cat


## Decide Mason Pair
scoreboard players operation #MWL NumOfRole = #MWL AddedMason
function mwj:system/preparation/role_decision/mason_pair
scoreboard objectives remove NumOfRole