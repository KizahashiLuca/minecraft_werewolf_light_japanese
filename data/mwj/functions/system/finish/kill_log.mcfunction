###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Find Killer
execute as @a[team=Player] if score @s VICTIM = Time KILLLOG_NUM run scoreboard players set @s VICTIM_FLAG 1
execute as @a[team=Player] if score @s NUM = @p[scores={VICTIM_FLAG=1}] KILLER run scoreboard players set @s KILLER_FLAG 1

scoreboard players operation @p[scores={VICTIM_FLAG=1}] TICK *= Time DENOMINATOR

## 1000 sec. -
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 1000.. if score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".0","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 1000.. unless score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]

## 100 sec. - 999 sec.
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 100..999 if score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    0","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".0","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 100..999 unless score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    0","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]

## 10 sec. - 99 sec.
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 10..99 if score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    00","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".0","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 10..99 unless score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    00","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]

## 0 sec. - 9.sec.
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 0..9 if score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    000","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".0","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 0..9 unless score @p[scores={VICTIM_FLAG=1}] TICK matches 0..5 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    000","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":".","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"TICK"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"green"}]

## Increment Kill Number by 1
scoreboard players add Time KILLLOG_NUM 1

## Reset a Flag
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0

## Loop
execute if score Time KILLLOG_NUM < Time KILLER_NUM run function mwj:system/finish/kill_log