####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Count Players
scoreboard players set #MWL NumOfPlayers 0
execute as @a[predicate=mwj:gamemode/not_spectator] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[predicate=mwj:player/test] run scoreboard players set #MWL NumOfPlayers 15
## Set roles
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
scoreboard players operation #MWL NumOfRoles += #MWL DummyRoleMode