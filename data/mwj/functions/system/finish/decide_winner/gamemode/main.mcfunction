####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Draw
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 0 run function mwj:system/finish/decide_winner/detect_winner/draw

## Gamemode
execute if score #MWL GameMode matches 1 run function mwj:system/finish/decide_winner/gamemode/normal_werewolf
execute if score #MWL GameMode matches 2 run function mwj:system/finish/decide_winner/gamemode/two_alive
execute if score #MWL GameMode matches 3 run function mwj:system/finish/decide_winner/gamemode/annihilation