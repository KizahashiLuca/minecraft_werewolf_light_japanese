###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

## REcount members
scoreboard players set Time NUM 0
execute as @a run scoreboard players add Time NUM 1

## numbering
execute as @a run function mwj:system/prepare/numbering
tag @a remove numbered

## objective set
scoreboard objectives add WOLF dummy
scoreboard objectives add MADMAN dummy
scoreboard objectives add VILLAGER dummy
scoreboard objectives add SEER dummy
scoreboard objectives add MEDIUM dummy
scoreboard objectives add CAT dummy
scoreboard objectives add FOX dummy
scoreboard players set Time WOLF 0
scoreboard players set Time MADMAN 0
scoreboard players set Time VILLAGER 0
scoreboard players set Time SEER 0
scoreboard players set Time MEDIUM 0
scoreboard players set Time CAT 0
scoreboard players set Time FOX 0

## DEBUG
execute if score Time NUM matches 2 run scoreboard players set Time WOLF 1

## decide amount of role
execute if score Time NUM matches 3 run function mwj:role/breakdown/p03
execute if score Time NUM matches 4 run function mwj:role/breakdown/p04
execute if score Time NUM matches 5 run function mwj:role/breakdown/p05
execute if score Time NUM matches 6 run function mwj:role/breakdown/p06
execute if score Time NUM matches 7 run function mwj:role/breakdown/p07
execute if score Time NUM matches 8 run function mwj:role/breakdown/p08
execute if score Time NUM matches 9 run function mwj:role/breakdown/p09
execute if score Time NUM matches 10 run function mwj:role/breakdown/p10
execute if score Time NUM matches 11 run function mwj:role/breakdown/p11
execute if score Time NUM matches 12 run function mwj:role/breakdown/p12
execute if score Time NUM matches 13 run function mwj:role/breakdown/p13
execute if score Time NUM matches 14 run function mwj:role/breakdown/p14

## add role
execute if score Time AddedRole matches 1 run scoreboard players set Time FOX 1
execute if score Time AddedRole matches 2 run scoreboard players set Time CAT 1
execute if score Time AddedRole matches 3 run scoreboard players add Time VILLAGER 1

## decide role
execute as @r[limit=1] run function mwj:role/decide/wolf
execute as @r[limit=1] run function mwj:role/decide/madman
execute as @r[limit=1] run function mwj:role/decide/villager
execute as @r[limit=1] run function mwj:role/decide/seer
execute as @r[limit=1] run function mwj:role/decide/medium
execute as @r[limit=1] run function mwj:role/decide/cat
execute as @r[limit=1] run function mwj:role/decide/fox

## effect
effect give @p[scores={ROLE=3}] minecraft:resistance 1000000 199 true