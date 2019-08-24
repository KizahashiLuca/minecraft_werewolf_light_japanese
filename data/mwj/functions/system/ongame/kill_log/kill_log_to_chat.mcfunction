###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Find Killer
execute as @a if score @s VICTIM_NUM = Time KILLER run scoreboard players set @s VICTIM 1
execute as @a if score @s NUM = @p[scores={VICTIM=1}] KILLER_NUM run scoreboard players set @s KILLER 1

## Send a Kill Log to Chat
execute if score @p[scores={VICTIM=1}] TIME matches 1000.. if entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}] 
execute if score @p[scores={VICTIM=1}] TIME matches 100..999 if entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}] 
execute if score @p[scores={VICTIM=1}] TIME matches 10..99 if entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}] 
execute if score @p[scores={VICTIM=1}] TIME matches 0..9 if entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={KILLER=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}]

## Send a Death Log to Chat
execute if score @p[scores={VICTIM=1}] TIME matches 1000.. unless entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}] 
execute if score @p[scores={VICTIM=1}] TIME matches 100..999 unless entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}] 
execute if score @p[scores={VICTIM=1}] TIME matches 10..99 unless entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}] 
execute if score @p[scores={VICTIM=1}] TIME matches 0..9 unless entity @p[scores={KILLER=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={VICTIM=1}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={VICTIM=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={VICTIM=1}]","color":"green"}]

## Increment Kill Number by 1
execute as @a[scores={VICTIM=1}] run scoreboard players add Time KILLER 1

## Reset a Flag
scoreboard players set @a VICTIM 0
scoreboard players set @a KILLER 0