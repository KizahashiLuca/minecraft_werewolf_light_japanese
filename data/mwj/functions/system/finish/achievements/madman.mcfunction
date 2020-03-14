###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Madman 1
execute if score @s ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 run scoreboard players set @s MADMAN_ACHIEVE1 1

## Madman 2
scoreboard objectives add ACHIEVE_PREV dummy
scoreboard objectives add ACHIEVE_POST dummy
scoreboard players set @s ACHIEVE_PREV 0
scoreboard players set @s ACHIEVE_POST 0
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman1
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman2
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman3
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman4
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman5
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman6
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman7
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
execute if score @s PREV_ROLE matches 2 if score @s DEATH matches 0 if score Time WINNER matches 1 if score @s ACHIEVE_PREV matches 0 store success score @s ACHIEVE_POST run advancement grant @s only mwj:achievements/madman/madman2 madman8
scoreboard players operation @s ACHIEVE_PREV = @s ACHIEVE_POST
scoreboard objectives remove ACHIEVE_PREV
scoreboard objectives remove ACHIEVE_POST