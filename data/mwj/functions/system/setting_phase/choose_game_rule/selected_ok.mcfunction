####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set preview choice
scoreboard players operation #MWL PrevGameMode = #MWL GameMode
scoreboard players operation #MWL PreDummyRoleMode = #MWL DummyRoleMode
scoreboard players operation #MWL Prev2ndRoleMode = #MWL 2ndRoleMode

## Recount players
function mwj:system/common/roles/recount_roles/main

## Set game rule
function mwj:system/setting_phase/choose_game_rule/selected_set