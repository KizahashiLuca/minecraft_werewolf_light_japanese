####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 1 percent
scoreboard players add #MWL GameTime 1
execute if score #MWL GameTime matches 1000.. run scoreboard players remove #MWL GameTime 1000

## Set inventory
function mwj:system/setting_phase/choose_game_time/set_inventory