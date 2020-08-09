###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Find Killer
execute as @a[team=Player] if score @s NumberOfVictim = #MWL NumberOfKillLog run scoreboard players set @s FlagOfVictim 1
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfVictim=1}] NumberOfKiller run scoreboard players set @s FlagOfKiller 1

scoreboard players operation @p[scores={FlagOfVictim=1}] Tick *= #MWL TempVariable

## 1000 sec. -
execute as @p[scores={FlagOfVictim=1,Second=1000..,Tick=0..5}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={FlagOfVictim=1,Second=1000..,Tick=6..}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 100 sec. - 999 sec.
execute as @p[scores={FlagOfVictim=1,Second=100..999,Tick=0..5}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={FlagOfVictim=1,Second=100..999,Tick=6..}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 10 sec. - 99 sec.
execute as @p[scores={FlagOfVictim=1,Second=10..99,Tick=0..5}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={FlagOfVictim=1,Second=10..99,Tick=6..}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 0 sec. - 9.sec.
execute as @p[scores={FlagOfVictim=1,Second=1..9,Tick=0..5}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @p[scores={FlagOfVictim=1,Second=1..9,Tick=6..}] if entity @p[scores={FlagOfKiller=1}] run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@s","objective":"Second"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"Tick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfKiller=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## Increment Kill Number by 1
scoreboard players add #MWL NumberOfKillLog 1

## Reset a Flag
scoreboard players reset @a FlagOfVictim
scoreboard players reset @a FlagOfKiller

## Loop
execute if score #MWL NumberOfKillLog < #MWL CountOfKiller run function mwj:system/finish/kill_log