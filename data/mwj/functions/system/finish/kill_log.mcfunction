###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Find Killer
execute as @a if score @s VICTIM = Time KILLLOG_NUM run scoreboard players set @s VICTIM_FLAG 1
execute as @a if score @s NUM = @p[scores={VICTIM_FLAG=1}] KILLER run scoreboard players set @s KILLER_FLAG 1

## Send a Kill Log to Chat
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 1000.. if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 100..999 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 10..99 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 0..9 if entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}]

## Send a Death Log to Chat
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 1000.. unless entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 100..999 unless entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 10..99 unless entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_FLAG=1}] SECOND matches 0..9 unless entity @p[scores={KILLER_FLAG=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_FLAG=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_FLAG=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_FLAG=1}]","color":"green"}]

## Increment Kill Number by 1
execute as @a[scores={VICTIM_FLAG=1}] run scoreboard players add Time KILLLOG_NUM 1

## Reset a Flag
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0