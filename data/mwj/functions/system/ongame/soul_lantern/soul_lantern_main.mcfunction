###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Soul lantern
execute as @a[team=Player,scores={DROP_LANTERN=1..,SNEAKTIME=1..}] at @s run function mwj:system/ongame/soul_lantern/throw_lantern
scoreboard players set @a[team=Player,scores={DROP_LANTERN=1..,SNEAKTIME=1..}] SNEAKTIME 0
scoreboard players remove @a[team=Player,scores={DROP_LANTERN=1..}] DROP_LANTERN 1

execute as @a[team=Player,scores={DROP_SOULLANTERN=1..,SNEAKTIME=1..}] at @s run function mwj:system/ongame/soul_lantern/throw_soul_lantern
scoreboard players set @a[team=Player,scores={DROP_SOULLANTERN=1..,SNEAKTIME=1..}] SNEAKTIME 0
scoreboard players remove @a[team=Player,scores={DROP_SOULLANTERN=1..}] DROP_SOULLANTERN 1