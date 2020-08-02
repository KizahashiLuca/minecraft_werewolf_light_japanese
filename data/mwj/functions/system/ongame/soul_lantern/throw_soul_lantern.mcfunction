###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Detect throwing soul_lantern
execute as @s run function mwj:system/ongame/soul_lantern/compare_soul_lantern_tag
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1]
data remove storage mwj:teleporter Teleporter.Temp
data remove storage mwj:teleporter Teleporter.SoulLantern