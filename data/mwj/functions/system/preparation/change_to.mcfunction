###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## RE-Count Players
scoreboard players set #MWL NumOfPlayers 0
function mwj:system/ongame/settings/count_players
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL SetDummyRole matches 1 run scoreboard players add #MWL NumOfRoles 1

## Revoke advancements
function mwj:system/finish/revoke_advancements

## Recount the Number of Roles
execute if score #MWL SetCasting matches 0 run function mwj:system/common/roles/set_role_number
execute if score #MWL SetCasting matches 0 run function mwj:system/common/roles/set_added_role_number
execute if score #MWL SetCasting matches 0 run function mwj:system/ongame/settings/reset_added_role
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL TempVariable = #MWL PrevAddedRole
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL PrevAddedRole -= #MWL NumOfRoles
execute if score #MWL SetCasting matches 1 if score #MWL PrevAddedRole matches ..-1 run scoreboard players operation #MWL NumOfVillagers -= #MWL PrevAddedRole
execute if score #MWL SetCasting matches 1 if score #MWL PrevAddedRole matches 1.. run function mwj:system/ongame/settings/decrease_number_of_role/main

execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL PrevAddedRole = #MWL NumOfRoles
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason = #MWL NumOfMasons
execute if score #MWL SetCasting matches 1 run scoreboard players set #MWL TempVariable 2
execute if score #MWL SetCasting matches 1 run scoreboard players operation #MWL AddedMason /= #MWL TempVariable

## Set messages
function mwj:system/common/message/change_to

## Reset Scoreboard
scoreboard players set #MWL Tick 0
scoreboard players operation #MWL Second = #MWL ChangeHideTime
scoreboard players set #MWL Phase 10

## Set bossbar
bossbar set minecraft:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL ChangeHideTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second