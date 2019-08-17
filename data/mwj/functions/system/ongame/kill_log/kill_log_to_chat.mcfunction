###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Set a Killer and Victim Flag
execute as @a run function mwj:system/ongame/kill_log/kill_log_detection

## Send a Kill Log to Chat
execute if score @p[scores={GAME=2}] TIME matches 1000.. if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"    ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 100..999 if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"     ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 10..99 if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"      ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}] 
execute if score @p[scores={GAME=2}] TIME matches 0..9 if entity @p[scores={GAME=1}] run tellraw @a ["",{"text":"       ","color":"reset"},{"score":{"name":"@p[scores={GAME=2}]","objective":"TIME"},"color":"reset"},{"text":" sec.  :  ","color":"reset"},{"selector":"@p[scores={GAME=1}]","color":"red"},{"text":" --> ","color":"reset"},{"selector":"@a[scores={GAME=2}]","color":"green"}]

## Increment Kill Number by 1
execute if entity @p[scores={GAME=2}] run scoreboard players add Time VICTIM 1

## Reset a Flag
scoreboard players set @a GAME 0