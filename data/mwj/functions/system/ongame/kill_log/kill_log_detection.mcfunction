###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Set a Killer and Victim Flag
execute if score @s KILLER = Time VICTIM run scoreboard players set @s GAME 1
execute if score @s VICTIM = Time VICTIM run scoreboard players set @s GAME 2