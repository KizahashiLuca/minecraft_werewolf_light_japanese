###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Number the Members
execute as @a run function mwj:system/preparation/preparation_numbering
tag @a remove numbered

## Decide Players' Role
execute if score Time WOLF matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/wolf_decision
execute if score Time MADMAN matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/madman_decision
execute if score Time FOX matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/fox_decision
execute if score Time VILLAGER matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/villager_decision
execute if score Time SEER matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/seer_decision
execute if score Time MEDIUM matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/medium_decision
execute if score Time MASON matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/mason_decision
execute if score Time DETECTIVE matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/detective_decision
execute if score Time CAT matches 1.. as @r[limit=1] run function mwj:system/preparation/decision_role/cat_decision