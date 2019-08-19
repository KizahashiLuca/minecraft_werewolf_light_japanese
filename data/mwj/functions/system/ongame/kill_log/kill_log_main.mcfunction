###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Store Kill Log
function mwj:system/ongame/kill_log/kill_log_of_victim
function mwj:system/ongame/kill_log/kill_log_of_killer
function mwj:system/ongame/kill_log/kill_log_of_suicide

## Increment KILL Number by 1
execute if entity @a[advancements={mwj:be_killed_by_cat=false,mwj:be_killed_by_wolf=false,mwj:be_killed_by_nonwolf=false},scores={DEATH=1}] run scoreboard players add Time KILLER 1
execute if entity @a[advancements={mwj:be_killed_by_cat=true}] run scoreboard players add Time KILLER 1
execute if entity @a[advancements={mwj:be_killed_by_wolf=true}] run scoreboard players add Time KILLER 1
execute if entity @a[advancements={mwj:be_killed_by_nonwolf=true}] run scoreboard players add Time KILLER 1

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Change Spectator for the Dead
gamemode spectator @a[scores={DEATH=1}]

## Change the Dead's variables
scoreboard players set @a[scores={DEATH=1}] DEATH 2