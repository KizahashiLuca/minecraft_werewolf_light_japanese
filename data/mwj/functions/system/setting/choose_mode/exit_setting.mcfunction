####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Store Number of Role
execute if score #MWL SetCasting matches 0 run scoreboard players operation #MWL AddedVilla += #MWL AddedRole
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL NumOfVillagers += #MWL AddedRole

execute if score #MWL SetCasting matches 0 run scoreboard players operation #MWL PrevAddedRole = #MWL AddedRoleNumber
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL PrevAddedRole = #MWL NumOfRoles
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason = #MWL NumOfMasons
execute if score #MWL SetCasting matches 1 run scoreboard players set #MWL TempVariable 2
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason /= #MWL TempVariable

## Store Variables of ChangeGameTime
scoreboard players set #MWL ChangeGameTime 5
scoreboard players operation #MWL ChangeGameTime *= #MWL GameTime

## Calculate Glow Time
scoreboard players set #MWL TempVariable 6
scoreboard players operation #MWL ChangeGlowTime = #MWL GlowTime
scoreboard players operation #MWL ChangeGlowTime *= #MWL ChangeGameTime
scoreboard players operation #MWL ChangeGlowTime *= #MWL TempVariable

## Clear inventory
clear @a

## Reset scoreboards
function mwj:system/setting/choose_mode/reset_scoreboards

## Hide Time
function mwj:system/preparation/change_to