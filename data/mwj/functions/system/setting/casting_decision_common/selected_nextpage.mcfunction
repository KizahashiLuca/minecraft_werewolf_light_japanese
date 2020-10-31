###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Set Next Page
scoreboard players add #MWL Phase 1
execute if score #MWL Version matches ..14 if score #MWL Phase matches 98 run scoreboard players set #MWL Phase 95
execute if score #MWL Phase matches 99 run scoreboard players set #MWL Phase 95

execute if score #MWL Phase matches 95 run function mwj:system/setting/casting_decision_1/set_added
execute if score #MWL Phase matches 96 run function mwj:system/setting/casting_decision_2/set_added
execute if score #MWL Phase matches 97 run function mwj:system/setting/casting_decision_3/set_added
execute if score #MWL Phase matches 98 run function mwj:system/setting/casting_decision_4/set_added
function mwj:system/setting/casting_decision_common/set_inventory