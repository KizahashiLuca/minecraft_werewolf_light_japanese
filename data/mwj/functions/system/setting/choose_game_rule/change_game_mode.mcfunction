####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Change Game Mode
scoreboard players add #MWL GameMode 1
execute if score #MWL GameMode matches 4.. run scoreboard players set #MWL GameMode 1

## Set inventory
function mwj:system/setting/choose_game_rule/set_inventory