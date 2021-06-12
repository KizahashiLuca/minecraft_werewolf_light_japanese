####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect throwing soul_lantern
execute as @s run function mwj:system/ongame/soul_lantern/compare_soul_lantern_tag
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1]
data remove storage mwj:teleporter Teleporter.Temp
data remove storage mwj:teleporter Teleporter.SoulLantern