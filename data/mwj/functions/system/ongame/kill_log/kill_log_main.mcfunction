###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Increment KILL Variable by 1 for each Victim
execute if score @s VICTIM_LOG_TEMP matches 1 run scoreboard players add Time VICTIM 1

## Store Killer Number
execute as @a[scores={KILLER_LOG_TEMP=1}] unless score @s NUM = @p[scores={VICTIM_LOG_TEMP=1}] NUM run tag @s add KillerPlayer
scoreboard players reset @p[tag=KillerPlayer] KILLER_LOG_TEMP
scoreboard players operation @s[scores={VICTIM_LOG_TEMP=1}] KILLER_NUM = @p[tag=KillerPlayer] NUM
tag @p[tag=KillerPlayer] remove KillerPlayer

## Store Killer Number of Exception
#### Accident / Suicide
execute unless entity @p[scores={KILLER_LOG_TEMP=1}] if score @s VICTIM_LOG_TEMP matches 1 run scoreboard players operation @s KILLER_NUM = @s NUM
#### Fox is Seered
execute if score @s KILLLOG_FOX matches 1 run scoreboard players operation @s KILLER_NUM = @s STRAY_BY_FOX
#### Cat Stray Bullet
execute if score @s KILLLOG_CAT matches 1 run scoreboard players operation @s KILLER_NUM = @s STRAY_BY_CAT

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