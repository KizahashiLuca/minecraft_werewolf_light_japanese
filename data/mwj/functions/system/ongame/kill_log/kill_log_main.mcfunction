###############################
## Minecraft Version 1.13
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Flag
#### Killer Flag
execute as @a[advancements={mwj:killed_player=true},team=Player] run function mwj:system/ongame/kill_log/kill_log_killer
#### Victim Flag
execute as @a[scores={DEATH=1},team=Player] run function mwj:system/ongame/kill_log/kill_log_victim

## Store Number of Killer Player
#### Victim : 1 -
#### Killer : 0
execute if score Time VICTIM_NUM matches 1.. if score Time KILLER_NUM matches 0 as @a[scores={VICTIM_FLAG=1},team=Player] run scoreboard players operation @s KILLER = @s NUM
#### Victim : 1 -
#### Killer : 1
execute if score Time VICTIM_NUM matches 1.. if score Time KILLER_NUM matches 1 as @a[scores={VICTIM_FLAG=1},team=Player] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=1}] NUM
#### Victim : 2 -
#### Killer : 2 -
execute if score Time VICTIM_NUM matches 2.. if score Time KILLER_NUM matches 2.. as @a[scores={VICTIM_FLAG=1},team=Player] run function mwj:system/ongame/kill_log/kill_log_sub

## Fox is Seered
execute as @a[team=Player] if score @s KILLLOG_FOX matches 1 run scoreboard players operation @s KILLER = @s STRAY_BY_FOX
## Cat Stray Bullet
execute as @a[team=Player] if score @s KILLLOG_CAT matches 1 run scoreboard players operation @s KILLER = @s STRAY_BY_CAT

## Reset Scoreboard
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0
scoreboard players set @a KILLLOG_FOX 0
scoreboard players set @a KILLLOG_CAT 0
scoreboard players set @a[tag=!SeeredFox] STRAY_BY_FOX 0
scoreboard players set @a[tag=!StrayBullet] STRAY_BY_CAT 0
scoreboard players set Time VICTIM_NUM 0
scoreboard players set Time KILLER_NUM 0

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Change Spectator for the Dead
gamemode spectator @a[scores={DEATH=1},team=Player]

## Change the Dead's variables
scoreboard players set @a[scores={DEATH=1},team=Player] DEATH 2