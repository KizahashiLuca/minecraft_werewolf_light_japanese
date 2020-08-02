###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Set Prev Page
scoreboard players remove #MWL Phase 1
execute if score #MWL Phase matches 89 run scoreboard players set #MWL Phase 92

execute if score #MWL Phase matches 90 run function mwj:system/setting/decision_role_addition1/set_added
execute if score #MWL Phase matches 91 run function mwj:system/setting/decision_role_addition2/set_added
execute if score #MWL Phase matches 92 run function mwj:system/setting/decision_role_addition3/set_added
function mwj:system/setting/decision_role_addition_common/set_scoreboard