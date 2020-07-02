###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Honey block
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:honey_bottle"}]}] run function mwj:system/ongame/honey_block/clear_honey_bottle
execute as @a[team=Player,scores={DROP_HONEY_BLOCK=1..,SNEAKTIME=1..}] run function mwj:system/ongame/honey_block/set_honey_block
scoreboard players set @a[team=Player,scores={DROP_HONEY_BLOCK=1..,SNEAKTIME=1..}] SNEAKTIME 0
scoreboard players remove @a[team=Player,scores={DROP_HONEY_BLOCK=1..}] DROP_HONEY_BLOCK 1
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:honey_block",tag:{display:{Tag:"\"HoneyBlock\""}}}},scores={NUM=1..}] at @s run function mwj:system/ongame/honey_block/summon_area_effect_cloud

## Effect
effect clear @a[team=Player,scores={DEATH=0}] minecraft:slowness
execute as @e[type=minecraft:area_effect_cloud,tag=HoneyBlock] run function mwj:system/ongame/honey_block/sticky_mine