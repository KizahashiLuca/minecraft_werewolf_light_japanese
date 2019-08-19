###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Kill Log of victim Main Process
scoreboard players operation @a[advancements={mwj:be_killed_by_cat=true}] VICTIM = Time VICTIM
scoreboard players operation @a[advancements={mwj:be_killed_by_wolf=true}] VICTIM = Time VICTIM
scoreboard players operation @a[advancements={mwj:be_killed_by_nonwolf=true}] VICTIM = Time VICTIM

scoreboard players operation @a[advancements={mwj:be_killed_by_cat=true}] TIME = Time Limit
scoreboard players operation @a[advancements={mwj:be_killed_by_wolf=true}] TIME = Time Limit
scoreboard players operation @a[advancements={mwj:be_killed_by_nonwolf=true}] TIME = Time Limit
