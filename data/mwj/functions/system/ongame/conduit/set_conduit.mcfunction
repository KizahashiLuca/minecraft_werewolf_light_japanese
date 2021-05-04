####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect conduit set
execute at @s unless score @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] NumOfPlayers matches 1.. run scoreboard players operation @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] NumOfPlayers = @s NumOfPlayers