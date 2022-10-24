####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect throwing soul_lantern
execute as @s run function mwj:system/game_phase/items/soul_lantern/compare_soul_lantern_tag
kill @e[predicate=mwj:items/lantern/detect_soul_lantern_position,sort=nearest,limit=1]
data remove storage mwj:teleporter Teleporter.Temp
data remove storage mwj:teleporter Teleporter.SoulLantern