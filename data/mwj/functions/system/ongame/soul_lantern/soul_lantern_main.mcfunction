###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Soul lantern
execute as @a[team=Player,scores={DROP_SOULLANTERN=1..,SNEAKTIME=1..}] run function mwj:system/ongame/soul_lantern/set_soul_lantern
execute as @a[team=Player,scores={DROP_LANTERN=1..,SNEAKTIME=1..}] run function mwj:system/ongame/soul_lantern/set_lantern
scoreboard players set @a[team=Player,scores={DROP_LANTERN=1..,SNEAKTIME=1..}] SNEAKTIME 0
scoreboard players remove @a[team=Player,scores={DROP_LANTERN=1..}] DROP_LANTERN 1
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:soul_lantern",tag:{display:{Tag:"\"SoulLantern\""}}}},scores={NUM=1..}] at @s run function mwj:system/ongame/soul_lantern/summon_area_effect_cloud