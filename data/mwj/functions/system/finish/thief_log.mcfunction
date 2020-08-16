###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Set flag
execute as @a[scores={PrevRole=35}] if score @s NumberOfStolen = #MWL NumberOfStolen run scoreboard players set @s FlagOfThiefLog 1
scoreboard players operation @p[scores={FlagOfThiefLog=1}] ThiefStealTick *= #MWL TempVariable

## 1000 sec. -
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=1000..,ThiefStealTick=0..5}] TargetOfStolen run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=1000..,ThiefStealTick=6..}] TargetOfStolen run tellraw @a ["",{"text":"    ","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 100 sec. - 999 sec.
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=100..999,ThiefStealTick=0..5}] TargetOfStolen run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=100..999,ThiefStealTick=6..}] TargetOfStolen run tellraw @a ["",{"text":"    0","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 10 sec. - 99 sec.
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=10..99,ThiefStealTick=0..5}] TargetOfStolen run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=10..99,ThiefStealTick=6..}] TargetOfStolen run tellraw @a ["",{"text":"    00","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## 0 sec. - 9 sec.
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=1..9,ThiefStealTick=0..5}] TargetOfStolen run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".0","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]
execute as @a[team=Player] if score @s NumOfPlayers = @p[scores={FlagOfThiefLog=1,ThiefStealSecond=1..9,ThiefStealTick=6..}] TargetOfStolen run tellraw @a ["",{"text":"    000","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealSecond"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@p[scores={FlagOfThiefLog=1}]","objective":"ThiefStealTick"},"color":"white"},{"text":" sec.  :  ","color":"white"},{"selector":"@p[scores={FlagOfThiefLog=1}]","color":"red"},{"text":" --> ","color":"white"},{"selector":"@s","color":"green"}]

## Increment Thief Log Number by 1
scoreboard players add #MWL NumberOfStolen 1

## Remove Thief Flag
scoreboard players set @p[scores={FlagOfThiefLog=1}] FlagOfThiefLog 0

## Loop
execute if score #MWL NumberOfStolen <= #MWL NumOfThieves run function mwj:system/finish/thief_log