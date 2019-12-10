###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Number the Members
execute as @a[team=Player] run function mwj:system/preparation/preparation_numbering
tag @a remove numbered

## Decide Players' Role
scoreboard objectives add NUMBER_ROLE dummy
scoreboard players operation Time NUMBER_ROLE = Time WOLF
function mwj:system/preparation/decision_role/wolf_decision
scoreboard players operation Time NUMBER_ROLE = Time MADMAN
function mwj:system/preparation/decision_role/madman_decision
scoreboard players operation Time NUMBER_ROLE = Time FOX
function mwj:system/preparation/decision_role/fox_decision
scoreboard players operation Time NUMBER_ROLE = Time VILLAGER
function mwj:system/preparation/decision_role/villager_decision
scoreboard players operation Time NUMBER_ROLE = Time SEER
function mwj:system/preparation/decision_role/seer_decision
scoreboard players operation Time NUMBER_ROLE = Time MEDIUM
function mwj:system/preparation/decision_role/medium_decision
scoreboard players operation Time NUMBER_ROLE = Time MASON
function mwj:system/preparation/decision_role/mason_decision
scoreboard players operation Time NUMBER_ROLE = Time DETECTIVE
function mwj:system/preparation/decision_role/detective_decision
scoreboard players operation Time NUMBER_ROLE = Time THIEF
function mwj:system/preparation/decision_role/thief_decision
scoreboard players operation Time NUMBER_ROLE = Time CAT
function mwj:system/preparation/decision_role/cat_decision

## Decide Mason Pair
scoreboard players operation Time NUMBER_ROLE = Time AddedMason
function mwj:system/preparation/decision_role/mason_pair_decision
scoreboard objectives remove NUMBER_ROLE