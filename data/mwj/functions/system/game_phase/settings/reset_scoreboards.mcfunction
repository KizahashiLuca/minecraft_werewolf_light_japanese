####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Variables for Role
execute as @a run scoreboard players operation @s PrevRole = @s CurrentRole
#### Bakery
scoreboard players set @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/bakery] CountOfBakery 10
#### Mason
scoreboard players reset @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/not_mason] MasonPair
#### CleverWolf/Seer/FakeSeer/Sage/Medium/Detective/Thief
scoreboard players set @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/wander] TurnPageNum 0
scoreboard players enable @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/wander] TurnPageRight
scoreboard players enable @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/wander] TurnPageLeft
scoreboard players enable @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/wander] RoleTrigger
#### Drunk
scoreboard players set @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/not_drunk] 2ndRoleDone 1
scoreboard players set @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/drunk] 2ndRoleDone 0
scoreboard players set @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/drunk] 2ndRoleGiven 0
scoreboard players set @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/drunk] 2ndRoleDrunk 0

## Set Variables for Game
execute as @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/black] run scoreboard players add #MWL BLACK 1
execute as @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/purple] run scoreboard players add #MWL PURPLE 1
execute as @a[predicate=mwj:system/game_phase/settings/reset_scoreboards/white] run scoreboard players add #MWL WHITE 1
