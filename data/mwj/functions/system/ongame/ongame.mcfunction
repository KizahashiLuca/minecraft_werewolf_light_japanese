###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Timer System
function mwj:system/time

## Cannot Pickup Arrow
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:2b}

## Count Death Score
execute as @a[scores={ROLE=1}] if score @s DEATH matches 1 run scoreboard players remove Time BLACK 1
execute as @a[scores={ROLE=3}] if score @s DEATH matches 1 run scoreboard players remove Time PURPLE 1
execute as @a[scores={ROLE=4..9}] if score @s DEATH matches 1 run scoreboard players remove Time WHITE 1

## Detect Dropping Torch
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch"}}] doNotDrop 1
execute as @e[type=minecraft:item,scores={doNotDrop=1}] run data merge entity @s {PickupDelay:0}

## Fox System
execute if score Time FOX matches 1.. as @p[tag=SeeredFox] run function mwj:system/ongame/fox/fox_seered
execute if score Time FOX matches 1.. as @a[scores={ROLE=3}] run function mwj:system/ongame/fox/fox_main

## Seer System
execute if score Time SEER matches 1.. as @a[scores={ROLE=5}] run function mwj:system/ongame/seer/seer_main

## Medium System
execute if score Time MEDIUM matches 1.. as @a[scores={ROLE=6}] run function mwj:system/ongame/medium/medium_main

## Detective System
execute if score Time DETECTIVE matches 1.. as @a[scores={ROLE=8}] run function mwj:system/ongame/detective/detective_main

## Cat System
execute if score Time CAT matches 1.. as @a[scores={ROLE=10}] run function mwj:system/ongame/cat/cat_main

## Kill Log System
function mwj:system/ongame/kill_log/kill_log_main

## Decide Winner
function mwj:system/finish/decide_winner

## Exit This Game
execute if score Time GAME matches 0 run function mwj:system/finish/end_game
