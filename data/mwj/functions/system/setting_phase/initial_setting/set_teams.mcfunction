####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Team 
team add Player
team join Player @a[gamemode=!spectator]
team modify Player collisionRule always
team modify Player deathMessageVisibility never
team modify Player nametagVisibility never
team modify Player seeFriendlyInvisibles false
team modify Player friendlyFire false
team modify Player prefix "\u00a7r\u00a77"
team modify Player suffix "\u00a7r"