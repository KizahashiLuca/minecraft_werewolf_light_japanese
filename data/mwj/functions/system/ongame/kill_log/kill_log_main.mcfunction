###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Store Kill Log
function mwj:system/ongame/kill_log/kill_log_of_killer
function mwj:system/ongame/kill_log/kill_log_of_victim

## Increment KILL Number br 1
execute if entity @a[advancements={mwj:be_killed_by_cat=true}] run scoreboard players add Time KILLER 1
execute if entity @a[advancements={mwj:be_killed_by_wolf=true}] run scoreboard players add Time KILLER 1
execute if entity @a[advancements={mwj:be_killed_by_nonwolf=true}] run scoreboard players add Time KILLER 1

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player