####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set dummy role
scoreboard players set #MWL RandomCount 10
function mwj:system/game_phase/settings/random_generator/randomizing
scoreboard players operation #MWL RandomAnswer %= #MWL DummyRoleNumber
scoreboard players add #MWL RandomAnswer 1
scoreboard players operation #MWL SetDummyRole = #MWL RandomAnswer

## Detect dummy flag
execute if predicate mwj:system/game_phase/settings/set_dummy_role/madman run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/fanatic run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/immoralist run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/villager run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/bakery run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/lycanthrope run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/mason run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/seer run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/fake_seer run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/sage run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/medium run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/detective run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/thief run scoreboard players set #MWL DummyRoleFlag 1
execute if predicate mwj:system/game_phase/settings/set_dummy_role/little_red run scoreboard players set #MWL DummyRoleFlag 1

execute if predicate mwj:system/game_phase/settings/set_dummy_role/repeat run function mwj:system/game_phase/settings/set_dummy_role