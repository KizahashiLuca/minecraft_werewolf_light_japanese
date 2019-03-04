###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 04 March 2019
## Version: beta-1.0
###############################

## Time Count
function mwj:system/time

## If Time Limit has come
execute if score Time Limit matches 0 run kill @a[scores={ROLE=1}]

## Death Count
execute as @a[scores={ROLE=4..9}] if score @s DEATH matches 1 run scoreboard players remove Time WHITE 1
execute as @a[scores={ROLE=1}] if score @s DEATH matches 1 run scoreboard players remove Time BLACK 1
gamemode spectator @a[scores={DEATH=1}]
execute as @a[scores={ROLE=1..10}] if score @s DEATH matches 1 run scoreboard players set @s DEATH 2

## drop torch 
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

## item detect
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch"}}] doNotDrop 1
execute as @e[type=minecraft:item,scores={doNotDrop=1}] run data merge entity @s {PickupDelay:0}

## decide winner
execute if score Time BLACK matches 0 if score Time WHITE matches 0 run function mwj:system/finish/win_draw
execute if score Time BLACK matches 0 unless score Time WHITE matches 0 run function mwj:system/finish/win_white
execute unless score Time BLACK matches 0 if score Time WHITE matches 0 run function mwj:system/finish/win_black

## finish
execute if score Time GAME matches 0 run function mwj:system/finish/end_game
