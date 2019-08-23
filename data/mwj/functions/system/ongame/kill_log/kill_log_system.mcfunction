###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Store Kill Log of victim
scoreboard players operation @a[advancements={mwj:be_killed_by_cat=true},scores={DEATH=1}] VICTIM = Time VICTIM
scoreboard players operation @a[advancements={mwj:be_killed_by_wolf=true},scores={DEATH=1}] VICTIM = Time VICTIM
scoreboard players operation @a[advancements={mwj:be_killed_by_nonwolf=true},scores={DEATH=1}] VICTIM = Time VICTIM
scoreboard players operation @a[advancements={mwj:be_killed_by_cat=true},scores={DEATH=1}] TIME = Time Limit
scoreboard players operation @a[advancements={mwj:be_killed_by_wolf=true},scores={DEATH=1}] TIME = Time Limit
scoreboard players operation @a[advancements={mwj:be_killed_by_nonwolf=true},scores={DEATH=1}] TIME = Time Limit

## Store Kill Log of Suicides / Accidents
scoreboard players operation @a[advancements={mwj:be_killed_by_cat=false,mwj:be_killed_by_wolf=false,mwj:be_killed_by_nonwolf=false},scores={DEATH=1}] VICTIM = Time VICTIM
scoreboard players operation @a[advancements={mwj:be_killed_by_cat=false,mwj:be_killed_by_wolf=false,mwj:be_killed_by_nonwolf=false},scores={DEATH=1}] TIME = Time Limit

## Store Kill Log of Killer
scoreboard players operation @a[advancements={mwj:killed_player=true},scores={DEATH=0..1}] KILLER = Time VICTIM

## Set Flag
execute as @a if score @s VICTIM = Time VICTIM run scoreboard players set @s VICTIM_LOG_TEMP 1
execute as @a if score @s KILLER = Time VICTIM run scoreboard players set @s KILLER_LOG_TEMP 1

## Increment KILL Number by 1
execute if entity @a[scores={VICTIM_LOG_TEMP=1}] run scoreboard players add Time VICTIM 1

## Store Killer Number for Victim
execute as @a[scores={KILLER_LOG_TEMP=1}] run scoreboard players operation @a[scores={VICTIM_LOG_TEMP=1}] KILLER = @s NUM
execute unless entity @p[scores={KILLER_LOG_TEMP=1}] as @a[scores={VICTIM_LOG_TEMP=1}] run scoreboard players operation @s KILLER = @s NUM

## Reset Scoreboard
scoreboard players set @a[scores={KILLER_LOG_TEMP=1,DEATH=0}] KILLER 0
scoreboard players set @a VICTIM_LOG_TEMP 0
scoreboard players set @a KILLER_LOG_TEMP 0

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Change Spectator for the Dead
gamemode spectator @a[scores={DEATH=1}]

execute if entity @p[scores={DEATH=1}] as @a run function mwj:system/ongame/kill_log/kill_log_to_chat

## Change the Dead's variables
scoreboard players set @a[scores={DEATH=1}] DEATH 2