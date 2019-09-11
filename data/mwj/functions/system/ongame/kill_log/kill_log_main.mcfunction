###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Set Flag
#### Killer Flag
execute as @a[advancements={mwj:killed_player=true}] run function mwj:system/ongame/kill_log/kill_log_killer
#### Victim Flag
execute as @a[scores={DEATH=1}] run function mwj:system/ongame/kill_log/kill_log_victim

## Store Number of Killer Player
#### Victim : 1 -
#### Killer : 0
execute if score Time VICTIM_NUM matches 1.. if score Time KILLER_NUM matches 0 as @a[scores={VICTIM_FLAG=1}] run function mwj:system/ongame/kill_log/kill_log_sub1
#### Victim : 1 -
#### Killer : 1 -
execute if score Time VICTIM_NUM matches 1.. if score Time KILLER_NUM matches 1.. as @a[scores={VICTIM_FLAG=1}] run function mwj:system/ongame/kill_log/kill_log_sub2

## Reset Scoreboard
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0
scoreboard players set @a STRAY_BY_FOX 0
scoreboard players set @a STRAY_BY_CAT 0
scoreboard players set Time VICTIM_NUM 0
scoreboard players set Time KILLER_NUM 0

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Change Spectator for the Dead
gamemode spectator @a[scores={DEATH=1}]

## Change the Dead's variables
scoreboard players set @a[scores={DEATH=1}] DEATH 2