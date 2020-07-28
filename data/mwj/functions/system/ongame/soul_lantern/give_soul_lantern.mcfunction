###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Detect lantern set
execute store result score @s TeleporterPosX run data get entity @s Pos[0]
execute store result score @s TeleporterPosY run data get entity @s Pos[1]
execute store result score @s TeleporterPosZ run data get entity @s Pos[2]

## Store scoreboard to storage
data modify storage mwj:teleporter Teleporter.Temp.Pos set from entity @s Pos

## Give soul_lantern
loot spawn ~ ~ ~ loot mwj:teleporter
data modify storage mwj:teleporter Teleporter.Temp.Message set from entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{Tags:"UnsetStorage"}}},sort=nearest,limit=1] Item.tag.display.Lore[1]
data remove entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{Tags:"UnsetStorage"}}},sort=nearest,limit=1] Item.tag.Tags

## Merge data storage
data modify storage mwj:teleporter Teleporter.Store append from storage mwj:teleporter Teleporter.Temp