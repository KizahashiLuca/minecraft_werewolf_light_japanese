####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Winner is White
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 0 if score #MWL WHITE matches 1.. run function mwj:system/finish/decide_winner/detect_winner/villager

## Winner is Black
execute if score #MWL PURPLE matches 0 if score #MWL BLACK matches 1.. if score #MWL WHITE matches 0 run function mwj:system/finish/decide_winner/detect_winner/werewolf

## Winner is Fox
execute if score #MWL PURPLE matches 1.. if score #MWL BLACK matches 0 run function mwj:system/finish/decide_winner/detect_winner/fox

execute if score #MWL PURPLE matches 1.. if score #MWL WHITE matches 0 run function mwj:system/finish/decide_winner/detect_winner/fox