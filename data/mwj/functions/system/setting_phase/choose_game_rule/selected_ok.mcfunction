####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
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