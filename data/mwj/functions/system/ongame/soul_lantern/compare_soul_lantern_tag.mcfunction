###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Store soul_lantern's lore 2nd line
execute as @e[type=item,nbt={Item:{id:"minecraft:soul_lantern",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] run data modify storage mwj:teleporter Teleporter.SoulLantern set from entity @s Item.tag.display.Lore[2]

## Take stored storage out temporary storage
data modify storage mwj:teleporter Teleporter.Temp set from storage mwj:teleporter Teleporter.Store[0]
data remove storage mwj:teleporter Teleporter.Store[0]

## Compare soul_lantern's tag to temporary storage
execute store success score @s TeleporterTemp run data modify entity @e[type=item,nbt={Item:{id:"minecraft:soul_lantern",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] Item.tag.display.Lore[2] set from storage mwj:teleporter Teleporter.Temp.Message

## If not equal soul_lantern's tag to temporary storage, return soul_lantern's tag
execute if score @s TeleporterTemp matches 1 run data modify entity @e[type=item,nbt={Item:{id:"minecraft:soul_lantern",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] Item.tag.display.Lore[2] set from storage mwj:teleporter Teleporter.SoulLantern

## Return temporary storage to stored storage
execute if score @s TeleporterTemp matches 1 run data modify storage mwj:teleporter Teleporter.Store append from storage mwj:teleporter Teleporter.Temp

## If equal soul_lantern's tag to temporary storage, teleport player
execute at @s if score @s TeleporterTemp matches 0 run function mwj:system/ongame/soul_lantern/teleport_player

## Loop
execute if score @s TeleporterTemp matches 1 run function mwj:system/ongame/soul_lantern/compare_soul_lantern_tag