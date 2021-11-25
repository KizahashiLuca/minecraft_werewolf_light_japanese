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
scoreboard players operation #MWL Prev2ndRoleMode = #MWL 2ndRoleMode

## Recount players
function mwj:system/common/roles/recount_roles/main

## Set Game Rule
function mwj:system/setting_phase/choose_game_rule/selected_set