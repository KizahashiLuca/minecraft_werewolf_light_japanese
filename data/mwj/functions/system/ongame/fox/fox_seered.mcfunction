###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Tell Fox by Seer
tellraw @p[tag=SeeredFox] ["",{"text":"\n----------------------------------","color":"white"}]
execute as @a[scores={ROLE=5}] if score @s NUM = @p[tag=SeeredFox] STRAY_BY_FOX if score @p[tag=SeeredFox] DEATH matches 0 run tellraw @p[tag=SeeredFox] ["",{"text":"  ","color":"white"},{"selector":"@p[tag=SeeredFox]","color":"white"},{"text":" は ","color":"white"},{"selector":"@s","color":"white"},{"text":" に占われましたが、突然死しませんでした。","color":"white"}]
execute as @a[scores={ROLE=5}] if score @s NUM = @p[tag=SeeredFox] STRAY_BY_FOX if score @p[tag=SeeredFox] DEATH matches 1 run tellraw @p[tag=SeeredFox] ["",{"text":"  ","color":"white"},{"selector":"@p[tag=SeeredFox]","color":"white"},{"text":" は ","color":"white"},{"selector":"@s","color":"white"},{"text":" に占われて、突然死しました。","color":"white"}]
tellraw @p[tag=SeeredFox] ["",{"text":"----------------------------------\n","color":"white"}]

## Kill log
execute if score @p[tag=SeeredFox] DEATH matches 1 run scoreboard players set @p[tag=SeeredFox] KILLLOG_FOX 1

## Remove Tag
tag @p[tag=SeeredFox] remove SeeredFox