###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Set Flag
#### Killer Flag
execute as @a[advancements={mwj:killed_player=true},team=Player] run function mwj:system/ongame/kill_log/kill_log_killer
#### Victim Flag
execute as @a[scores={DeathCount=1},team=Player] run function mwj:system/ongame/kill_log/kill_log_victim

## Store Number of Killer Player
#### Victim : 1 -
#### Killer : 0
execute if score #MWL VICTIM_NUM matches 1.. if score #MWL KILLER_NUM matches 0 as @a[scores={VICTIM_FLAG=1},team=Player] run scoreboard players operation @s KILLER = @s NUM
#### Victim : 1 -
#### Killer : 1
execute if score #MWL VICTIM_NUM matches 1.. if score #MWL KILLER_NUM matches 1 as @a[scores={VICTIM_FLAG=1},team=Player] run scoreboard players operation @s KILLER = @p[scores={KILLER_FLAG=1}] NUM
#### Victim : 2 -
#### Killer : 2 -
execute if score #MWL VICTIM_NUM matches 2.. if score #MWL KILLER_NUM matches 2.. as @a[scores={VICTIM_FLAG=1},team=Player] run function mwj:system/ongame/kill_log/kill_log_sub

## Fox is Seered
execute as @a[team=Player,scores={KillLogOfFox=1}] run scoreboard players operation @s KILLER = @s KilledBySeer
## Cat Stray Bullet
execute as @a[team=Player,scores={KillLogOfCat=1}] run scoreboard players operation @s KILLER = @s KilledByCat
## Trident thrown
execute as @a[team=Player,scores={KillLogOfTrident=1}] run scoreboard players operation @s KILLER = @s KilledByTrident

## Reset Scoreboard
scoreboard players set @a VICTIM_FLAG 0
scoreboard players set @a KILLER_FLAG 0
scoreboard players set @a KillLogOfFox 0
scoreboard players set @a KillLogOfCat 0
scoreboard players set @a KillLogOfTrident 0
scoreboard players set @a[tag=!SeeredFox] KilledBySeer 0
scoreboard players set @a[tag=!StrayBullet] KilledByCat 0
scoreboard players set @a[tag=!TridentHit] KilledByTrident 0
scoreboard players set #MWL VICTIM_NUM 0
scoreboard players set #MWL KILLER_NUM 0

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Change Spectator for the Dead
gamemode spectator @a[scores={DeathCount=1},team=Player]

## Change the Dead's variables
scoreboard players set @a[scores={DeathCount=1},team=Player] DeathCount 2