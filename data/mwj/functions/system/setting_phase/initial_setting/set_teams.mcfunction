####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set teams
team add Player
team join Player @a[predicate=mwj:gamemode/not_spectator]
team modify Player collisionRule always
team modify Player deathMessageVisibility never
team modify Player nametagVisibility never
team modify Player seeFriendlyInvisibles false
team modify Player friendlyFire false
team modify Player prefix "\u00a7r\u00a77"
team modify Player suffix "\u00a7r"