####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Honey block
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:honey_bottle"}]}] run function mwj:system/items/honey_block/clear_honey_bottle
execute as @a[predicate=mwj:items/honey_block/detect_user] run function mwj:system/items/honey_block/set_honey_block
execute as @e[predicate=mwj:items/honey_block/detect_position_set] at @s run function mwj:system/items/honey_block/summon_area_effect_cloud

## Effect
effect clear @a[team=Player,scores={DeathCount=0}] minecraft:slowness
execute as @e[predicate=mwj:items/honey_block/detect_cloud] run function mwj:system/items/honey_block/effect_player