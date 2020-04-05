###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Set flag
execute as @a[scores={PREV_ROLE=9}] if score @s STEAL_NUM = Time STEAL_NUM run scoreboard players set @s STEAL_FLAG 1
scoreboard players operation @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK *= Time DENOMINATOR

## 1000 sec. -
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 1000.. if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 1000.. unless score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 100 sec. - 999 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 100..999 if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 100..999 unless score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 10 sec. - 99 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 10..99 if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 10..99 unless score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 0 sec. - 9 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 0..9 if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1}] STEAL_TARGET if score @p[scores={STEAL_FLAG=1}] STEAL_TIME_SEC matches 0..9 unless score @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK matches 0..5 run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## Increment Thief Log Number by 1
scoreboard players add Time STEAL_NUM 1

## Remove Thief Flag
scoreboard players set @p[scores={STEAL_FLAG=1}] STEAL_FLAG 0

## Loop
execute if score Time STEAL_NUM <= Time THIEF run function mwj:system/finish/thief_log