###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Login with en route
function mwj:system/en_route

## Run every tick
execute if score #MWL Phase matches 90..94 run function mwj:system/setting/role_addition_decision_common/main
execute if score #MWL Phase matches 85..89 run function mwj:system/setting/item_addition_decision_common/main
execute if score #MWL Phase matches 84 run function mwj:system/setting/game_mode_decision/main
execute if score #MWL Phase matches 83 run function mwj:system/setting/game_time_decision/main
execute if score #MWL Phase matches 82 run function mwj:system/setting/glow_time_decision/main
execute if score #MWL Phase matches 81 run function mwj:system/setting/hide_time_decision/main
execute if score #MWL Phase matches 80 run function mwj:system/setting/choose_mode/main
execute if score #MWL Phase matches 10 run function mwj:system/preparation/main
execute if score #MWL Phase matches 11 run function mwj:system/ongame/ongame