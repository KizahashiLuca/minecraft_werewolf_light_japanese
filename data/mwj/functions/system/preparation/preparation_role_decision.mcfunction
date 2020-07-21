###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Number the Members
execute as @a[team=Player] run function mwj:system/preparation/preparation_numbering
tag @a remove numbered

## Decide Players' Role
scoreboard objectives add NumOfRoles dummy
scoreboard players operation #MWL NumOfRoles = #MWL NumOfWolves
function mwj:system/preparation/decision_role/wolf_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfMadmans
function mwj:system/preparation/decision_role/madman_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfVillagers
function mwj:system/preparation/decision_role/villager_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfSeers
function mwj:system/preparation/decision_role/seer_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfMediums
function mwj:system/preparation/decision_role/medium_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfFoxes
function mwj:system/preparation/decision_role/fox_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfMasons
function mwj:system/preparation/decision_role/mason_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfDetectives
function mwj:system/preparation/decision_role/detective_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfThieves
function mwj:system/preparation/decision_role/thief_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfCats
function mwj:system/preparation/decision_role/cat_decision
scoreboard players operation #MWL NumOfRoles = #MWL NumOfFkSeers
function mwj:system/preparation/decision_role/fake_seer_decision

## Decide Mason Pair
scoreboard players operation #MWL NumOfRoles = #MWL AddedMason
function mwj:system/preparation/decision_role/mason_pair_decision
scoreboard objectives remove NumOfRoles