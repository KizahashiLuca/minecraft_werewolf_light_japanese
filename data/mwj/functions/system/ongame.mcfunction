###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
###############################

## Time Count
function mwj:system/time

## cat system
execute as @a[tag=StrayBullet_wolf] if score @s DEATH matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされて突然死しました。"}]
execute as @a[tag=StrayBullet_wolf] if score @s DEATH matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされましたが突然死しませんでした。"}]
execute as @a[tag=StrayBullet_nonwolf] if score @s DEATH matches 1 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされて突然死しました。"}]
execute as @a[tag=StrayBullet_nonwolf] if score @s DEATH matches 0 run tellraw @s ["",{"selector":"@s"},{"text":" は "},{"selector":"@p[scores={ROLE=10,DEATH=1..2}]"},{"text":" に道連れされましたが突然死しませんでした。"}]
execute as @a[tag=StrayBullet_wolf] run tag @s remove StrayBullet_wolf
execute as @a[tag=StrayBullet_nonwolf] run tag @s remove StrayBullet_nonwolf
execute as @a[scores={ROLE=10,DEATH=1},advancements={mwj:from_wolf=true}] run function mwj:system/damage/wolf_to_cat
execute as @a[scores={ROLE=10,DEATH=1},advancements={mwj:from_nonwolf=true}] run function mwj:system/damage/nonwolf_to_cat

## Death Count
execute as @a[scores={ROLE=4..9}] if score @s DEATH matches 1 run scoreboard players remove Time WHITE 1
execute as @a[scores={ROLE=1}] if score @s DEATH matches 1 run scoreboard players remove Time BLACK 1
gamemode spectator @a[scores={DEATH=1}]
execute as @a[scores={ROLE=1..10}] if score @s DEATH matches 1 run scoreboard players set @s DEATH 2

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

## cat system
execute as @a[tag=StrayBullet] run function mwj:system/damage/death
advancement revoke @a[advancements={mwj:from_wolf=true}] only mwj:from_wolf
advancement revoke @a[advancements={mwj:from_nonwolf=true}] only mwj:from_nonwolf

## decide winner
execute if score Time BLACK matches 0 if score Time WHITE matches 0 run function mwj:system/finish/win_draw
execute if score Time BLACK matches 0 unless score Time WHITE matches 0 run function mwj:system/finish/win_white
execute unless score Time BLACK matches 0 if score Time WHITE matches 1 run function mwj:system/finish/win_black

## time is up
execute if score Time Limit matches 0 run function mwj:system/finish/win_draw

## finish
execute if score Time GAME matches 0 run function mwj:system/finish/end_game
