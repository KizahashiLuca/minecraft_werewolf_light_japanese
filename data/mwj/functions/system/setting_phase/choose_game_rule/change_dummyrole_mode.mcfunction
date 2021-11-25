####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change Dummyrole Mode
scoreboard players add #MWL DummyRoleMode 1
execute if score #MWL DummyRoleMode matches 2.. run scoreboard players set #MWL DummyRoleMode 0

## Set inventory
function mwj:system/setting_phase/choose_game_rule/set_inventory