###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Conduit
execute as @a[team=Player,scores={DropConduit=1..,SneakTime=1..}] run function mwj:system/ongame/conduit/set_conduit
scoreboard players set @a[team=Player,scores={DropConduit=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropConduit=1..}] DropConduit 1
scoreboard players reset @a[team=Player,scores={DropConduit=..0}] DropConduit
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:conduit",tag:{Tags:["MWLitem"]}}}] at @s if entity @p[team=Player,scores={DeathCount=0},distance=..2] run function mwj:system/ongame/conduit/detect_conduit