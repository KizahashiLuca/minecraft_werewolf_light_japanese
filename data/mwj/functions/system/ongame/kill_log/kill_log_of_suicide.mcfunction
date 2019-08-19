###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Detect Suicides / Accidents
scoreboard players operation @a[advancements={mwj:be_killed_by_cat=false,mwj:be_killed_by_wolf=false,mwj:be_killed_by_nonwolf=false},scores={DEATH=1}] VICTIM = Time VICTIM
scoreboard players operation @a[advancements={mwj:be_killed_by_cat=false,mwj:be_killed_by_wolf=false,mwj:be_killed_by_nonwolf=false},scores={DEATH=1}] TIME = Time Limit