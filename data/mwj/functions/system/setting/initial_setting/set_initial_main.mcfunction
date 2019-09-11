###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Change gamerules
function mwj:system/setting/initial_setting/set_initial_gamerule

## Set Scoreboard
function mwj:system/setting/initial_setting/set_initial_scoreboard

## Decide Special Role
execute if score Time NUM matches 3..7 run function mwj:system/setting/decision_time_limit/time_limit_trigger
execute if score Time NUM matches 8..14 run function mwj:system/setting/decision_role_addition/role_addition_trigger