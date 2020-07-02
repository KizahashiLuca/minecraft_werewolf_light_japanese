###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set scoreboard
scoreboard players set @s HoneyBottleCount 0

## Clear honey_bottle
execute store result score @s HoneyBottleCount run clear @s minecraft:honey_bottle 0
clear @s[scores={HoneyBottleCount=4..}] minecraft:honey_bottle 4

## Give honey_block
give @s[scores={HoneyBottleCount=4..}] minecraft:honey_block 1

## Loop
execute as @s[nbt={Inventory:[{id:"minecraft:honey_bottle"}]}] run function mwj:system/ongame/honey_block/clear_honey_bottle