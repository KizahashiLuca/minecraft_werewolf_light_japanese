###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detect Wolf Killed
scoreboard players set @s[scores={ROLE_OF_NUM=1}] DEATH 1

## Tell Fox by Seer
scoreboard objectives add TMP dummy
scoreboard players set @s TMP 1
execute as @a[scores={ROLE=5}] if score @s NUM = @p[tag=SeeredFox,scores={TMP=1}] STRAY_BY_FOX run scoreboard players set @s TMP 1
scoreboard players set @p[tag=SeeredFox,scores={TMP=1}] TMP 0
tellraw @s[scores={DEATH=0..1}] ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s[scores={DEATH=0}] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"selector":"@a[scores={ROLE=5,TMP=1}]","color":"white"},{"text":" に占われましたが、突然死しませんでした。","color":"white"}]
tellraw @s[scores={DEATH=1}] ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"selector":"@a[scores={ROLE=5,TMP=1}]","color":"white"},{"text":" に占われて、突然死しました。","color":"white"}]
execute as @s[scores={DEATH=1}] run scoreboard players set @a[scores={ROLE=5,TMP=1}] SEER_ACHIEVE2 1
tellraw @s[scores={DEATH=0..1}] ["",{"text":"----------------------------------\n","color":"white"}]
scoreboard objectives remove TMP

## Kill log
scoreboard players set @s[scores={DEATH=1}] KILLLOG_FOX 1

## Detect Death
execute as @s[scores={DEATH=1,ROLE_OF_NUM=1}] run scoreboard players remove #MWL PURPLE 1
scoreboard players set @s[scores={ROLE_OF_NUM=1}] ROLE_OF_NUM 2

## Remove Tag
tag @s remove SeeredFox