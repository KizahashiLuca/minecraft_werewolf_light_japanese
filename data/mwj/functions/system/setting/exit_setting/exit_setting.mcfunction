###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Store Number of Role
scoreboard players operation #MWL AddedVilla += #MWL AddedRole
function mwj:system/setting/initial_setting/set_initial_added_role_number
scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole

## Store Variables of ChangeHideTime
scoreboard players set #MWL ChangeHideTime 15
scoreboard players operation #MWL ChangeHideTime *= #MWL HideTime

## Store Variables of ChangeGameTime
scoreboard players set #MWL ChangeGameTime 5
scoreboard players operation #MWL ChangeGameTime *= #MWL GameTime

## Calculate Glow Time
scoreboard players set #MWL TempVariable 6
scoreboard players operation #MWL ChangeGlowTime = #MWL GlowTime
scoreboard players operation #MWL ChangeGlowTime *= #MWL ChangeGameTime
scoreboard players operation #MWL ChangeGlowTime *= #MWL TempVariable

## Exit Setting - Remove Scoreboard
function mwj:system/setting/exit_setting/remove_scoreboard

## Hide Time
function mwj:system/setting/exit_setting/transition_hide_time