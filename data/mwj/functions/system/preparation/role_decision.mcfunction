###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Number the Members
execute as @a[team=Player] run function mwj:system/preparation/numbering
tag @a remove numbered

## Decide Players' Role
scoreboard objectives add NumOfRoles dummy
scoreboard players operation #MWL NumOfRoles = #MWL NumOfWolves
function mwj:system/preparation/role_decision/wolf
scoreboard players operation #MWL NumOfRoles = #MWL NumOfMadmans
function mwj:system/preparation/role_decision/madman
scoreboard players operation #MWL NumOfRoles = #MWL NumOfVillagers
function mwj:system/preparation/role_decision/villager
scoreboard players operation #MWL NumOfRoles = #MWL NumOfSeers
function mwj:system/preparation/role_decision/seer
scoreboard players operation #MWL NumOfRoles = #MWL NumOfMediums
function mwj:system/preparation/role_decision/medium
scoreboard players operation #MWL NumOfRoles = #MWL NumOfFoxes
function mwj:system/preparation/role_decision/fox
scoreboard players operation #MWL NumOfRoles = #MWL NumOfMasons
function mwj:system/preparation/role_decision/mason
scoreboard players operation #MWL NumOfRoles = #MWL NumOfDetectives
function mwj:system/preparation/role_decision/detective
scoreboard players operation #MWL NumOfRoles = #MWL NumOfThieves
function mwj:system/preparation/role_decision/thief
scoreboard players operation #MWL NumOfRoles = #MWL NumOfCats
function mwj:system/preparation/role_decision/cat
scoreboard players operation #MWL NumOfRoles = #MWL NumOfFkSeers
function mwj:system/preparation/role_decision/fake_seer
scoreboard players operation #MWL NumOfRoles = #MWL NumOfSages
function mwj:system/preparation/role_decision/sage
scoreboard players operation #MWL NumOfRoles = #MWL NumOfWhWolves
function mwj:system/preparation/role_decision/white_wolf
scoreboard players operation #MWL NumOfRoles = #MWL NumOfFanatics
function mwj:system/preparation/role_decision/fanatic
scoreboard players operation #MWL NumOfRoles = #MWL NumOfImmorals
function mwj:system/preparation/role_decision/immoralist

## Decide Mason Pair
scoreboard players operation #MWL NumOfRoles = #MWL AddedMason
function mwj:system/preparation/role_decision/mason_pair
scoreboard objectives remove NumOfRoles