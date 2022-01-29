####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set scoreboard
scoreboard players reset @s HoneyBottleCount

## Clear honey_bottle
execute store result score @s HoneyBottleCount run clear @s minecraft:honey_bottle 0
clear @s[scores={HoneyBottleCount=4..}] minecraft:honey_bottle 4

## Give honey_block
loot give @s loot mwj:item/special/honey_block

## Loop
execute as @s[nbt={Inventory:[{id:"minecraft:honey_bottle"}]}] run function mwj:system/items/honey_block/clear_honey_bottle