###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Add a tag
tag @s add SetConduit

## Detect player
execute at @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:"MWLitem"}}},tag=SetConduit,limit=1] as @a[team=Player,scores={DeathCount=0},distance=..2] unless score @s NUM = @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:"MWLitem"}}},tag=SetConduit,limit=1,scores={NUM=1..}] NUM run tag @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:"MWLitem"}}},tag=SetConduit,limit=1] add ExplodeConduit
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:"MWLitem"}}},tag=ExplodeConduit] at @s run function mwj:system/ongame/conduit/explode_conduit

## Remove a tag
tag @s remove SetConduit
tag @e[tag=ExplodeConduit] remove ExplodeConduit