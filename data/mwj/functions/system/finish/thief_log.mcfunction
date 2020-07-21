###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Set flag
execute as @a[scores={PrevRole=35}] if score @s STEAL_NUM = #MWL STEAL_NUM run scoreboard players set @s STEAL_FLAG 1
scoreboard players operation @p[scores={STEAL_FLAG=1}] ThiefStealTick *= #MWL TempVariable

## 1000 sec. -
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=1000..,ThiefStealTick=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=1000..,ThiefStealTick=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 100 sec. - 999 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=100..999,ThiefStealTick=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=100..999,ThiefStealTick=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 10 sec. - 99 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=10..99,ThiefStealTick=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=10..99,ThiefStealTick=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 0 sec. - 9 sec.
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=1..9,ThiefStealTick=0..5}] STEAL_TARGET run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NUM = @p[scores={STEAL_FLAG=1,ThiefStealSecond=1..9,ThiefStealTick=6..}] STEAL_TARGET run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={STEAL_FLAG=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={STEAL_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## Increment Thief Log Number by 1
scoreboard players add #MWL STEAL_NUM 1

## Remove Thief Flag
scoreboard players set @p[scores={STEAL_FLAG=1}] STEAL_FLAG 0

## Loop
execute if score #MWL STEAL_NUM <= #MWL NumOfThieves run function mwj:system/finish/thief_log