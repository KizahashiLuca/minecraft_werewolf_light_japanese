###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Set flag
execute as @a[scores={PREV_ROLE=9}] if score @s STEAL_NUM = Time STEAL_NUM run scoreboard players set @s STEAL_FLAG 1
scoreboard players operation @p[scores={STEAL_FLAG=1}] STEAL_TIME_TICK *= Time DENOMINATOR

## 1000 sec. -
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=1000..,STEAL_TIME_TICK=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=1000..,STEAL_TIME_TICK=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 100 sec. - 999 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=100..999,STEAL_TIME_TICK=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=100..999,STEAL_TIME_TICK=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 10 sec. - 99 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=10..99,STEAL_TIME_TICK=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=10..99,STEAL_TIME_TICK=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 0 sec. - 9 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=1..9,STEAL_TIME_TICK=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,STEAL_TIME_SEC=1..9,STEAL_TIME_TICK=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_SEC"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"STEAL_TIME_TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## Increment Thief Log Number by 1
scoreboard players add Time STEAL_NUM 1

## Remove Thief Flag
scoreboard players set @p[scores={STEAL_FLAG=1}] STEAL_FLAG 0

## Loop
execute if score Time STEAL_NUM <= Time THIEF run function mwj:system/finish/thief_log