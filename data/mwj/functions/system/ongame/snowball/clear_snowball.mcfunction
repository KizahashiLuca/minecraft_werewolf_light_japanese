###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Clear snow_block
clear @s minecraft:snow_block 1

## Give snowball
loot give @s loot mwj:item/special/snowball
loot give @s loot mwj:item/special/snowball
loot give @s loot mwj:item/special/snowball
loot give @s loot mwj:item/special/snowball

## Loop
execute as @s[team=Player,nbt={Inventory:[{id:"minecraft:snow_block"}]}] run function mwj:system/ongame/snowball/clear_snowball