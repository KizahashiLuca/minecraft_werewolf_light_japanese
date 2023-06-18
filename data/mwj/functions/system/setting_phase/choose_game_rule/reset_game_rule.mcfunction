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
scoreboard players set #MWL GameMode 3
scoreboard players set #MWL DummyRoleMode 0
scoreboard players set #MWL 2ndRoleMode 0

## Set inventory
function mwj:system/setting_phase/choose_game_rule/change_to