###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if score #MWL Phase matches 92 run scoreboard players set #MWL Phase 90
# execute if score #MWL Phase matches 93 run scoreboard players set #MWL Phase 90

execute if score #MWL Phase matches 90 run function mwj:system/setting/decision_role_addition1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/decision_role_addition2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/decision_role_addition3/set_added
function mwj:system/setting/decision_role_addition_common/set_scoreboard