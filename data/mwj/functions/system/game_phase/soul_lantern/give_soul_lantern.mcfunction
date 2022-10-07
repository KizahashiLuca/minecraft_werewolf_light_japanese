####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect lantern set
execute store result score @s TeleporterPosX run data get entity @s Pos[0]
execute store result score @s TeleporterPosY run data get entity @s Pos[1]
execute store result score @s TeleporterPosZ run data get entity @s Pos[2]

## Store scoreboard to storage
data modify storage mwj:teleporter Teleporter.Temp.Pos set from entity @s Pos

## Give soul_lantern
loot spawn ~ ~ ~ loot mwj:item/special/soul_lantern
data modify storage mwj:teleporter Teleporter.Temp.Message set from entity @e[predicate=mwj:items/lantern/detect_unset_soul_lantern,sort=nearest,limit=1] Item.tag.display.Lore[3]
data remove entity @e[predicate=mwj:items/lantern/detect_unset_soul_lantern,sort=nearest,limit=1] Item.tag.Tags[1]

## Clear scoreboard
scoreboard players reset @a TeleporterPosX
scoreboard players reset @a TeleporterPosY
scoreboard players reset @a TeleporterPosZ

## Merge data storage
data modify storage mwj:teleporter Teleporter.Store append from storage mwj:teleporter Teleporter.Temp