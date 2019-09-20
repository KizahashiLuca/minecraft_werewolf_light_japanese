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
execute as @r[team=Player] if score Time WOLF matches 1.. run function mwj:system/preparation/decision_role/wolf_decision
execute as @r[team=Player] if score Time MADMAN matches 1.. run function mwj:system/preparation/decision_role/madman_decision
execute as @r[team=Player] if score Time FOX matches 1.. run function mwj:system/preparation/decision_role/fox_decision
execute as @r[team=Player] if score Time VILLAGER matches 1.. run function mwj:system/preparation/decision_role/villager_decision
execute as @r[team=Player] if score Time SEER matches 1.. run function mwj:system/preparation/decision_role/seer_decision
execute as @r[team=Player] if score Time MEDIUM matches 1.. run function mwj:system/preparation/decision_role/medium_decision
execute as @r[team=Player] if score Time MASON matches 1.. run function mwj:system/preparation/decision_role/mason_decision
execute as @r[team=Player] if score Time DETECTIVE matches 1.. run function mwj:system/preparation/decision_role/detective_decision
execute as @r[team=Player] if score Time CAT matches 1.. run function mwj:system/preparation/decision_role/cat_decision

## Decide Mason Pair
execute if score Time MASON matches 1.. run function mwj:system/preparation/decision_role/mason_pair_calculation
execute if score Time MASON matches 1.. as @a[scores={ROLE=7}] run function mwj:system/preparation/decision_role/mason_pair_decision