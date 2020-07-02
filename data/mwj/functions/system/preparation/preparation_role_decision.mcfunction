###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Number the Members
execute as @a[team=Player] run function mwj:system/preparation/preparation_numbering
tag @a remove numbered

## Decide Players' Role
scoreboard objectives add NUMBER_ROLE dummy
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfWolves
function mwj:system/preparation/decision_role/wolf_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfMadmans
function mwj:system/preparation/decision_role/madman_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfFoxes
function mwj:system/preparation/decision_role/fox_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfVillagers
function mwj:system/preparation/decision_role/villager_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfSeers
function mwj:system/preparation/decision_role/seer_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfMediums
function mwj:system/preparation/decision_role/medium_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfMasons
function mwj:system/preparation/decision_role/mason_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfDetectives
function mwj:system/preparation/decision_role/detective_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfThieves
function mwj:system/preparation/decision_role/thief_decision
scoreboard players operation #MWL NUMBER_ROLE = #MWL NumOfCats
function mwj:system/preparation/decision_role/cat_decision

## Decide Mason Pair
scoreboard players operation #MWL NUMBER_ROLE = #MWL AddedMason
function mwj:system/preparation/decision_role/mason_pair_decision
scoreboard objectives remove NUMBER_ROLE