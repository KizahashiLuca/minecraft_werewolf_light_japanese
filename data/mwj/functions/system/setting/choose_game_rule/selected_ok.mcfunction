####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Prev choice
scoreboard players operation #MWL PrevGameMode = #MWL GameMode
scoreboard players operation #MWL PreDummyRoleMode = #MWL DummyRoleMode
scoreboard players operation #MWL PrevCastMode = #MWL CastMode

scoreboard players operation #MWL PrevAddedRole = #MWL AddedRole
function mwj:system/common/roles/set_prev_roles

## Change Cast mode
execute if score #MWL CastMode matches 1 run function mwj:system/setting/choose_game_rule/set_cast_off
execute if score #MWL CastMode matches 0 run function mwj:system/setting/choose_game_rule/set_cast_on

## Change Dummyrole mode
execute if score #MWL DummyRoleMode matches 0 run function mwj:system/setting/choose_game_rule/set_dummy_role_cast_off
execute if score #MWL DummyRoleMode matches 1 run function mwj:system/setting/choose_game_rule/set_dummy_role_cast_on

## Set Game Rule
function mwj:system/setting/choose_game_rule/selected_set