####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
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