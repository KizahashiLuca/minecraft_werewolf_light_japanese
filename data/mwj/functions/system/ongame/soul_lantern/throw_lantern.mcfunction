####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect setting lantern
function mwj:system/ongame/soul_lantern/give_soul_lantern
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:lantern",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1]