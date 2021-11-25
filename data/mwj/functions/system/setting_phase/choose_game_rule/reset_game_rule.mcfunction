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
scoreboard players set #MWL GameMode 3
scoreboard players set #MWL DummyRoleMode 0
scoreboard players set #MWL 2ndRoleMode 0

## Set inventory
function mwj:system/setting_phase/choose_game_rule/set_inventory