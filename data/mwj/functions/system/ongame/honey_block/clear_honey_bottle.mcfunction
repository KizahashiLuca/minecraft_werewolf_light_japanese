###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Set scoreboard
scoreboard players reset @s HoneyBottleCount

## Clear honey_bottle
execute store result score @s HoneyBottleCount run clear @s minecraft:honey_bottle 0
clear @s[scores={HoneyBottleCount=4..}] minecraft:honey_bottle 4

## Give honey_block
loot give @s loot mwj:item/special/honey_block

## Loop
execute as @s[nbt={Inventory:[{id:"minecraft:honey_bottle"}]}] run function mwj:system/ongame/honey_block/clear_honey_bottle