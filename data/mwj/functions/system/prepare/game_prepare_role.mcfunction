###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Recount the Number of Members
scoreboard players set Time NUM 0
execute as @a run scoreboard players add Time NUM 1

## Number the Members
execute as @a run function mwj:system/prepare/numbering
tag @a remove numbered

## Add & Set the Objectives
scoreboard objectives add WOLF dummy
scoreboard objectives add MADMAN dummy
scoreboard objectives add VILLAGER dummy
scoreboard objectives add SEER dummy
scoreboard objectives add MEDIUM dummy
scoreboard objectives add CAT dummy
scoreboard objectives add MASON dummy
scoreboard objectives add DETECTIVE dummy
scoreboard players set Time WOLF 0
scoreboard players set Time MADMAN 0
scoreboard players set Time VILLAGER 0
scoreboard players set Time SEER 0
scoreboard players set Time MEDIUM 0
scoreboard players set Time CAT 0
scoreboard players set Time MASON 0
scoreboard players set Time DETECTIVE 0

## Decide a Amount of Roles
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

## Add Special Roles
execute if score Time AddedRole matches 4 run scoreboard players add Time VILLAGER 2
execute if score Time AddedRole matches 7 run scoreboard players set Time MASON 2
execute if score Time AddedRole matches 8 run scoreboard players set Time DETECTIVE 1
execute if score Time AddedRole matches 8 run scoreboard players set Time VILLAGER 1
execute if score Time AddedRole matches 10 run scoreboard players set Time CAT 1
execute if score Time AddedRole matches 10 run scoreboard players add Time VILLAGER 1

## Decide Players' Role
execute as @r[limit=1] run function mwj:role/decide/wolf
execute as @r[limit=1] run function mwj:role/decide/madman
execute as @r[limit=1] run function mwj:role/decide/villager
execute as @r[limit=1] run function mwj:role/decide/seer
execute as @r[limit=1] run function mwj:role/decide/medium
execute as @r[limit=1] run function mwj:role/decide/mason
execute as @r[limit=1] run function mwj:role/decide/detecitve
execute as @r[limit=1] run function mwj:role/decide/cat

## Add & Set Scoreboard of Seer
execute if score Time SEER matches 1.. run scoreboard objectives add SEER_OBJ trigger
execute if score Time SEER matches 1.. run scoreboard players reset @a SEER_OBJ

## Add & Set Scoreboard of Medium
execute if score Time MEDIUM matches 1.. run scoreboard objectives add MEDIUM_OBJ trigger
execute if score Time MEDIUM matches 1.. run scoreboard players reset @a MEDIUM_OBJ

## Add & Set Scoreboard of Detective
execute if score Time DETECTIVE matches 1.. run scoreboard objectives add DETECTIVE_OBJ trigger
execute if score Time DETECTIVE matches 1.. run scoreboard players reset @a DETECTIVE_OBJ