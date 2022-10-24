####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Find Killer
execute as @a[predicate=mwj:player/player] if score @s NumberOfVictim = #MWL NumberOfKillLog run scoreboard players set @s FlagOfVictim 1
execute as @a[predicate=mwj:player/player] if score @s NumOfPlayers = @p[scores={FlagOfVictim=1}] NumberOfKiller run scoreboard players set @s FlagOfKiller 1

scoreboard players operation @p[scores={FlagOfVictim=1}] Tick *= #MWL Num00005

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