###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Find Killer
execute as @a[team=Player] if score @s VICTIM = Time KILLLOG_NUM run scoreboard players set @s VICTIM_FLAG 1
execute as @a[team=Player] if score @s NUM = @p[scores={VICTIM_FLAG=1}] KILLER run scoreboard players set @s KILLER_FLAG 1

scoreboard players operation @p[scores={VICTIM_FLAG=1}] TICK *= Time DENOMINATOR

## 1000 sec. -
execute as @p[scores={VICTIM_FLAG=1,SECOND=1000..,TICK=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,SECOND=1000..,TICK=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 100 sec. - 999 sec.
execute as @p[scores={VICTIM_FLAG=1,SECOND=100..999,TICK=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,SECOND=100..999,TICK=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 10 sec. - 99 sec.
execute as @p[scores={VICTIM_FLAG=1,SECOND=10..99,TICK=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,SECOND=10..99,TICK=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 0 sec. - 9.sec.
execute as @p[scores={VICTIM_FLAG=1,SECOND=1..9,TICK=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,SECOND=1..9,TICK=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@s","objective":"SECOND"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"TICK"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## Increment Kill Number by 1
scoreboard players add Time KILLLOG_NUM 1

## Reset a Flag
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0

## Loop
execute if score Time KILLLOG_NUM < Time KILLER_NUM run function mwj:system/finish/kill_log