###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Set Variables for Game
scoreboard players set @a CurrentRole 0
scoreboard players set @a[team=Player] NumOfPlayers 1
scoreboard players set #MWL CurrentRole 1
scoreboard players set #MWL NumOfPlayers 0
scoreboard players set #MWL IsEndGame 0
scoreboard players set #MWL WINNER 0
scoreboard players set #MWL WHITE 0
scoreboard players set #MWL BLACK 0
scoreboard players set #MWL PURPLE 0
## Set Variables for Mason Number
scoreboard players set @a MasonPair 0
scoreboard players set #MWL MasonPair 1

## RE-Count Players
scoreboard players set #MWL NumOfPlayers 0
function mwj:system/ongame/settings/count_players

## Set dummy role
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL SetDummyRole matches 1 run scoreboard players add #MWL NumOfRoles 1