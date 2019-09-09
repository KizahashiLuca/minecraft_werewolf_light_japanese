###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Find Killer
execute as @a if score @s VICTIM_NUM = Time KILLER run scoreboard players set @s VICTIM_LOG_TEMP 1
execute as @a if score @s NUM = @p[scores={VICTIM_LOG_TEMP=1}] KILLER_NUM run scoreboard players set @s KILLER_LOG_TEMP 1

## Send a Kill Log to Chat
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 1000.. if entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 100..999 if entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 10..99 if entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 0..9 if entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}]

## Send a Death Log to Chat
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 1000.. unless entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 100..999 unless entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 10..99 unless entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}] 
execute if score @p[scores={VICTIM_LOG_TEMP=1}] SECOND matches 0..9 unless entity @p[scores={KILLER_LOG_TEMP=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={VICTIM_LOG_TEMP=1}]","objective":"SECOND"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM_LOG_TEMP=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM_LOG_TEMP=1}]","color":"green"}]

## Increment Kill Number by 1
execute as @a[scores={VICTIM_LOG_TEMP=1}] run scoreboard players add Time KILLER 1

## Reset a Flag
scoreboard players set @a VICTIM_LOG_TEMP 0
scoreboard players set @a KILLER_LOG_TEMP 0