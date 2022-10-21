####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect conduit set
execute unless score @e[predicate=mwj:items/conduit/detect_position,sort=nearest,limit=1] NumOfPlayers matches 1.. run scoreboard players operation @e[predicate=mwj:items/conduit/detect_position,sort=nearest,limit=1] NumOfPlayers = @s NumOfPlayers