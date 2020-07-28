###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Find Killer
execute as @a[team=Player] if score @s VICTIM = #MWL KILLLOG_NUM run scoreboard players set @s VICTIM_FLAG 1
execute as @a[team=Player] if score @s NUM = @p[scores={VICTIM_FLAG=1}] KILLER run scoreboard players set @s KILLER_FLAG 1

scoreboard players operation @p[scores={VICTIM_FLAG=1}] Tick *= #MWL TempVariable

## 1000 sec. -
execute as @p[scores={VICTIM_FLAG=1,Second=1000..,Tick=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,Second=1000..,Tick=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 100 sec. - 999 sec.
execute as @p[scores={VICTIM_FLAG=1,Second=100..999,Tick=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,Second=100..999,Tick=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 10 sec. - 99 sec.
execute as @p[scores={VICTIM_FLAG=1,Second=10..99,Tick=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,Second=10..99,Tick=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 0 sec. - 9.sec.
execute as @p[scores={VICTIM_FLAG=1,Second=1..9,Tick=0..5}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={VICTIM_FLAG=1,Second=1..9,Tick=6..}] if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## Increment Kill Number by 1
scoreboard players add #MWL KILLLOG_NUM 1

## Reset a Flag
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0

## Loop
execute if score #MWL KILLLOG_NUM < #MWL KILLER_NUM run function mwj:system/finish/kill_log