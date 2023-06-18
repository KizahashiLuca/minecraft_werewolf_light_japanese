####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset choice
scoreboard players operation #MWL GameMode = #MWL PrevGameMode
scoreboard players operation #MWL DummyRoleMode = #MWL PreDummyRoleMode
scoreboard players operation #MWL 2ndRoleMode = #MWL Prev2ndRoleMode

## Set Game Rule
function mwj:system/setting_phase/choose_game_rule/selected_set