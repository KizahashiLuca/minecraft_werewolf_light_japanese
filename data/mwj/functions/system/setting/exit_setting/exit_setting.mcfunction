###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Store Number of Role
execute if score #MWL SetCasting matches 0 run scoreboard players operation #MWL AddedVilla += #MWL AddedRole
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL NumOfVillagers += #MWL AddedRole

execute if score #MWL SetCasting matches 0 run scoreboard players operation #MWL PrevAddedRole = #MWL AddedRoleNumber
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL PrevAddedRole = #MWL NumOfRoles
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason = #MWL NumOfMasons
execute if score #MWL SetCasting matches 1 run scoreboard players set #MWL TempVariable 2
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason /= #MWL TempVariable

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
function mwj:system/preparation/change_to