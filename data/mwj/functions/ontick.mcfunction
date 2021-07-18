####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Login with en route
function mwj:system/common/en_route/main

## Set Game
execute if score #MWL Phase matches 95..99 run function mwj:system/setting/casting_decision/common/main
execute if score #MWL Phase matches 90..94 run function mwj:system/setting/role_addition_decision/common/main
execute if score #MWL Phase matches 85..89 run function mwj:system/setting/item_addition_decision/common/main
execute if score #MWL Phase matches 84 run function mwj:system/setting/choose_game_rule/main
execute if score #MWL Phase matches 83 run function mwj:system/setting/choose_game_time/main
execute if score #MWL Phase matches 82 run function mwj:system/setting/choose_glow_time/main
execute if score #MWL Phase matches 81 run function mwj:system/setting/choose_hide_time/main
execute if score #MWL Phase matches 80 run function mwj:system/setting/choose_mode/main

## Ongame
execute if score #MWL Phase matches 11 run function mwj:system/ongame/main
## Hide Time
execute if score #MWL Phase matches 10 run function mwj:system/preparation/main
## Exit Game
execute if score #MWL Phase matches 0 run function mwj:system/finish/end_game
