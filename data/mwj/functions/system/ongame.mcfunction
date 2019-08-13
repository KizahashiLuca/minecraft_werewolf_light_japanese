###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

## Time Count
function mwj:system/time

## cat system
execute if score Time CAT matches 1 run function mwj:system/ongame/cat_system
execute if score Time FOX matches 1 as @a[scores={ROLE=3}] run function mwj:system/ongame/fox_system

## Death Count
execute as @a[scores={ROLE=4..9}] if score @s DEATH matches 1 run scoreboard players remove Time WHITE 1
execute as @a[scores={ROLE=1}] if score @s DEATH matches 1 run scoreboard players remove Time BLACK 1
gamemode spectator @a[scores={DEATH=1}]
execute as @a[scores={DEATH=1}] run scoreboard players set @s DEATH 2

## detect dropping torch
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch"}}] doNotDrop 1
execute as @e[type=minecraft:item,scores={doNotDrop=1}] run data merge entity @s {PickupDelay:0}
execute as @p[scores={ROLE=5}] if score @s TORCH matches 1 unless score @s DONE matches 1 run function mwj:role/process/seer
execute as @p[scores={ROLE=6}] if score @s TORCH matches 1 unless score @s DONE matches 1 run function mwj:role/process/medium
execute as @p[scores={ROLE=5}] if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:role/process/message
execute as @p[scores={ROLE=6}] if score @s TORCH matches 1 if score @s DONE matches 1 run function mwj:role/process/message

scoreboard players enable @p[scores={ROLE=5}] SEER_OBJ
scoreboard players enable @p[scores={ROLE=6}] MEDIUM_OBJ

## seer & medium result
execute as @p[scores={ROLE=5}] unless score @s DONE matches 1 if score @s SEER_OBJ matches 1..14 run function mwj:role/process/seer/branch
execute as @p[scores={ROLE=6}] unless score @s DONE matches 1 if score @s MEDIUM_OBJ matches 1..14 run function mwj:role/process/medium/branch
execute as @p[scores={ROLE=5}] if score @s DONE matches 1 if score @s SEER_OBJ matches 1..14 run function mwj:role/process/message
execute as @p[scores={ROLE=6}] if score @s DONE matches 1 if score @s MEDIUM_OBJ matches 1..14 run function mwj:role/process/message

## decide winner
function mwj:system/finish/decide_winner

## finish
execute if score Time GAME matches 0 run function mwj:system/finish/end_game
