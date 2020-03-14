###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Store Number of Role
scoreboard players operation Time AddedRole = Time PrevAddedRole

## Store Variables of ChangeHideTime
scoreboard players set Time ChangeHideTime 15
scoreboard players operation Time ChangeHideTime *= Time HideTime

## Store Variables of ChangeGameTime
scoreboard players set Time ChangeGameTime 5
scoreboard players operation Time ChangeGameTime *= Time GameTime

## Calculate Glow Time
scoreboard players set Time DENOMINATOR 60
scoreboard players operation Time GlowTime *= Time ChangeGameTime
scoreboard players operation Time GlowTime *= Time DENOMINATOR
scoreboard players operation Time ChangeGlowTime = Time ChangeGameTime
scoreboard players operation Time ChangeGlowTime *= Time DENOMINATOR
scoreboard players set Time DENOMINATOR 10
scoreboard players operation Time GlowTime /= Time DENOMINATOR
scoreboard players operation Time ChangeGlowTime -= Time GlowTime

## Exit Setting - Remove Scoreboard
function mwj:system/setting/exit_setting/remove_scoreboard

## Hide Time
function mwj:system/setting/exit_setting/transition_hide_time