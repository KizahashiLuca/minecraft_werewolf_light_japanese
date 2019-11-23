###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Store Number of Role
scoreboard players operation Time AddedRole = Time PrevAddedRole

## Store Variables of ChangeHidingTime
scoreboard players set Time ChangeHidingTime 30
scoreboard players operation Time ChangeHidingTime *= Time HidingTime

## Store Variables of ChangeLimitTime
scoreboard players set Time ChangeLimitTime 5
scoreboard players operation Time ChangeLimitTime *= Time LimitTime

## Calculate Glowing Time
scoreboard players operation Time GlowingTime *= Time LimitTime

## Exit Setting - Remove Scoreboard
function mwj:system/setting/exit_setting/remove_scoreboard

## Hiding Time
execute unless score Time ChangeHidingTime matches 0 run function mwj:system/setting/exit_setting/transition_hiding_time
## No Hiding Time
execute if score Time ChangeHidingTime matches 0 run function mwj:system/setting/exit_setting/transition_game