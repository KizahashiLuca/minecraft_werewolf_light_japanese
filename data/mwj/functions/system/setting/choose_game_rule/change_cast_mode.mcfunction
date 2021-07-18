####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change Cast Mode
scoreboard players add #MWL CastMode 1
execute if score #MWL CastMode matches 2.. run scoreboard players set #MWL CastMode 0

## Set inventory
function mwj:system/setting/choose_game_rule/set_inventory