####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change dummyrole mode
scoreboard players add #MWL DummyRoleMode 1
execute if predicate mwj:system/setting_phase/choose_game_rule/dummyrole_mode_more_than_limit run scoreboard players set #MWL DummyRoleMode 0

## Set inventory
function mwj:system/setting_phase/choose_game_rule/change_to