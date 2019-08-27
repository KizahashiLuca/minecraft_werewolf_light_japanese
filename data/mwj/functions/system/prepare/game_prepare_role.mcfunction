###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

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

## Decide Breakdown of Roles
execute if score Time NUM matches 3 run function mwj:system/prepare/breakdown_decision/p03
execute if score Time NUM matches 4 run function mwj:system/prepare/breakdown_decision/p04
execute if score Time NUM matches 5 run function mwj:system/prepare/breakdown_decision/p05
execute if score Time NUM matches 6 run function mwj:system/prepare/breakdown_decision/p06
execute if score Time NUM matches 7 run function mwj:system/prepare/breakdown_decision/p07
execute if score Time NUM matches 8 run function mwj:system/prepare/breakdown_decision/p08
execute if score Time NUM matches 9 run function mwj:system/prepare/breakdown_decision/p09
execute if score Time NUM matches 10 run function mwj:system/prepare/breakdown_decision/p10
execute if score Time NUM matches 11 run function mwj:system/prepare/breakdown_decision/p11
execute if score Time NUM matches 12 run function mwj:system/prepare/breakdown_decision/p12
execute if score Time NUM matches 13 run function mwj:system/prepare/breakdown_decision/p13
execute if score Time NUM matches 14 run function mwj:system/prepare/breakdown_decision/p14

## Add Special Roles
execute if score Time AddedRole matches 4 run scoreboard players add Time VILLAGER 2
execute if score Time AddedRole matches 7 run scoreboard players set Time MASON 2
execute if score Time AddedRole matches 8 run scoreboard players set Time DETECTIVE 1
execute if score Time AddedRole matches 8 run scoreboard players add Time VILLAGER 1
execute if score Time AddedRole matches 10 run scoreboard players set Time CAT 1
execute if score Time AddedRole matches 10 run scoreboard players add Time VILLAGER 1

## Decide Players' Role
execute as @r[limit=1] run function mwj:system/prepare/role_decision/wolf
execute as @r[limit=1] run function mwj:system/prepare/role_decision/madman
execute as @r[limit=1] run function mwj:system/prepare/role_decision/villager
execute as @r[limit=1] run function mwj:system/prepare/role_decision/seer
execute as @r[limit=1] run function mwj:system/prepare/role_decision/medium
execute as @r[limit=1] run function mwj:system/prepare/role_decision/mason
execute as @r[limit=1] run function mwj:system/prepare/role_decision/detective
execute as @r[limit=1] run function mwj:system/prepare/role_decision/cat

## Add & Set Scoreboard of Seer
execute if score Time SEER matches 1.. run scoreboard objectives add SEER_OBJ trigger
execute if score Time SEER matches 1.. run scoreboard players reset @a[scores={ROLE=5}] SEER_OBJ

## Add & Set Scoreboard of Medium
execute if score Time MEDIUM matches 1.. run scoreboard objectives add MEDIUM_OBJ trigger
execute if score Time MEDIUM matches 1.. run scoreboard players reset @a[scores={ROLE=6}] MEDIUM_OBJ

## Add & Set Scoreboard of Detective
execute if score Time DETECTIVE matches 1.. run scoreboard objectives add DETECTIVE_OBJ trigger
execute if score Time DETECTIVE matches 1.. run scoreboard players reset @a[scores={ROLE=8}] DETECTIVE_OBJ