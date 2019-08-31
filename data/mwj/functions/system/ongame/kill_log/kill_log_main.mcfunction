###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Store Kill Log of victim
scoreboard players operation @a[scores={DEATH=1}] VICTIM = Time VICTIM
scoreboard players operation @a[scores={DEATH=1}] TIME = Time Limit

## Store Kill Log of Killer
scoreboard players operation @a[advancements={mwj:killed_player=true}] KILLER = Time VICTIM

## Set Flag
execute if entity @p[scores={DEATH=1}] as @a if score @s VICTIM = Time VICTIM run scoreboard players set @s VICTIM_LOG_TEMP 1
execute if entity @p[scores={DEATH=1}] as @a if score @s KILLER = Time VICTIM run scoreboard players set @s KILLER_LOG_TEMP 1

## Increment KILL Number by 1
execute as @a[scores={VICTIM_LOG_TEMP=1}] run scoreboard players add Time VICTIM 1

## Store Victim Order 
execute as @a[scores={VICTIM_LOG_TEMP=1}] run scoreboard players operation @s VICTIM_NUM = @s VICTIM

## Store Killer Number for Victim
execute if entity @p[scores={KILLER_LOG_TEMP=1}] as @a[scores={VICTIM_LOG_TEMP=1}] run scoreboard players operation @s KILLER_NUM = @p[scores={KILLER_LOG_TEMP=1}] NUM
execute unless entity @p[scores={KILLER_LOG_TEMP=1}] as @a[scores={VICTIM_LOG_TEMP=1}] run scoreboard players operation @s KILLER_NUM = @s NUM

## Reset Scoreboard
scoreboard players set @a VICTIM 0
scoreboard players set @a KILLER 0
scoreboard players set @a VICTIM_LOG_TEMP 0
scoreboard players set @a KILLER_LOG_TEMP 0

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Change Spectator for the Dead
gamemode spectator @a[scores={DEATH=1}]

## Change the Dead's variables
scoreboard players set @a[scores={DEATH=1}] DEATH 2