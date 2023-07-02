####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect honey_block set
execute unless score @e[predicate=mwj:items/honey_block/detect_position,sort=nearest,limit=1] NumOfPlayers matches 1.. run scoreboard players operation @e[predicate=mwj:items/honey_block/detect_position,sort=nearest,limit=1] NumOfPlayers = @s NumOfPlayers