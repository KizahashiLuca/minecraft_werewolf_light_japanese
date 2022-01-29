####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect conduit set
execute at @s unless score @e[predicate=mwj:items/conduit/detect_position,sort=nearest,limit=1] NumOfPlayers matches 1.. run scoreboard players operation @e[predicate=mwj:items/conduit/detect_position,sort=nearest,limit=1] NumOfPlayers = @s NumOfPlayers
scoreboard players remove @a[predicate=mwj:items/conduit/detect_user_score] DropConduit 1
scoreboard players reset @a[predicate=mwj:items/conduit/detect_user_score_error] DropConduit