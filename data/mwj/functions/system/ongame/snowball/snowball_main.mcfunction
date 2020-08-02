###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2
###############################

## Snowball
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:snow_block"}]}] run function mwj:system/ongame/snowball/clear_snowball
execute as @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:"MWLitem"}}}] run function mwj:system/ongame/snowball/detect_snowball_move
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,scores={SNOWBALL=1..}] run function mwj:system/ongame/snowball/detect_snowball_exist