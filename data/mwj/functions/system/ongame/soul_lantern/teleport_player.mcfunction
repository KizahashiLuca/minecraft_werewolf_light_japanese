###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Summon area_effect_cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["SoulLantern"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}
data modify entity @e[type=minecraft:area_effect_cloud,tag=SoulLantern,limit=1] Pos set from storage mwj:teleporter Teleporter.Temp.Pos

## Teleport player
execute at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1.0 2.0
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~5 0.2 0.8 0.2 0 1000 normal @a
tp @s @e[type=minecraft:area_effect_cloud,tag=SoulLantern,limit=1]

## Kill area_effect_cloud
kill @e[type=minecraft:area_effect_cloud,tag=SoulLantern,limit=1]