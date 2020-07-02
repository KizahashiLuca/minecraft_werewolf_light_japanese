###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Conduit
execute as @a[team=Player,scores={DROP_CONDUIT=1..,SNEAKTIME=1..}] run function mwj:system/ongame/conduit/set_conduit
scoreboard players set @a[team=Player,scores={DROP_CONDUIT=1..,SNEAKTIME=1..}] SNEAKTIME 0
scoreboard players remove @a[team=Player,scores={DROP_CONDUIT=1..}] DROP_CONDUIT 1
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{display:{Tag:"\"Mine\""}}}}] at @s if entity @p[team=Player,scores={DEATH=0},distance=..2] run function mwj:system/ongame/conduit/detect_conduit