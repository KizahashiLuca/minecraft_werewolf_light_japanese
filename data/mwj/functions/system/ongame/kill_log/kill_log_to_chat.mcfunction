###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Find Killer
execute as @a if score @s VICTIM = Time KILLER run scoreboard players set @s GAME 2
tellraw @a ["",{"text":"      @p[scores={GAME=2}] VICTIM : ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"VICTIM"},"color":"reset"},{"text":"\n      @p[scores={GAME=2}] KILLER : ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"KILLER"},"color":"reset"}] 
execute as @a if score @s NUM = @p[scores={GAME=2}] KILLER run scoreboard players set @s GAME 1
tellraw @a ["",{"text":"      @p[scores={GAME=1}] NUM    : ","color":"reset"},{"score":{"name":"@p[scores={GAME=1}]","objective":"NUM"},"color":"reset"},{"text":"\n      Time                KILLER : ","color":"reset"},{"score":{"name":"Time","objective":"KILLER"},"color":"reset"}] 

## Send a Kill Log to Chat
execute if score @p[scores={GAME=2}] TIME matches 1000.. if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 100..999 if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 10..99 if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 0..9 if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}]

## Send a Death Log to Chat
execute if score @p[scores={GAME=2}] TIME matches 1000.. unless entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=2}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 100..999 unless entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=2}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 10..99 unless entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=2}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 0..9 unless entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=2}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}]

## Increment Kill Number by 1
execute as @a[scores={GAME=2}] run scoreboard players add Time KILLER 1

## Reset a Flag
##execute as @a[scores={GAME=2}] run scoreboard players set @s VICTIM 0
scoreboard players set @a GAME 0