####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Summon area_effect_cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["SoulLantern"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}
data modify entity @e[predicate=mwj:items/lantern/detect_cloud,limit=1] Pos set from storage mwj:teleporter Teleporter.Temp.Pos

## Teleport player
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0
particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.8 0.2 0 1000 normal @a
tp @s @e[predicate=mwj:items/lantern/detect_cloud,limit=1]
execute at @e[predicate=mwj:items/lantern/detect_cloud,limit=1] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1.0 2.0

## Kill area_effect_cloud
kill @e[predicate=mwj:items/lantern/detect_cloud,limit=1]