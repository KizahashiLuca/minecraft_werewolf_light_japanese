####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Message for Mason Pair
execute as @a[predicate=mwj:system/game_phase/settings/tell_roles/pairs/mason] if score @s MasonPair = #MWL MasonPair run scoreboard players set @s TagOfRoleWork 1

## Message for Mason Pair
tellraw @a[predicate=mwj:system/game_phase/settings/tell_roles/pairs/mason_pair] ["",{"text":"      ","color":"white"},{"selector":"@a[predicate=mwj:system/game_phase/settings/tell_roles/pairs/mason_pair]","color":"dark_green"}]

## Reset Scoreboard
scoreboard players reset @a TagOfRoleWork
scoreboard players add #MWL MasonPair 1