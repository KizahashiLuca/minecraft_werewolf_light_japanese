####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Reset choice
scoreboard players operation #MWL GameMode = #MWL PrevGameMode
scoreboard players operation #MWL DummyRoleMode = #MWL PreDummyRoleMode
scoreboard players operation #MWL CastMode = #MWL PrevCastMode

## Set Game Rule
function mwj:system/setting/choose_game_rule/selected_set