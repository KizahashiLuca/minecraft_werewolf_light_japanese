####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Log-in midtime of game phase
execute as @a[predicate=mwj:system/common/en_route/not_spectator] run function mwj:system/common/en_route/game_phase
execute as @a[predicate=mwj:system/common/en_route/not_have_roles] run function mwj:system/common/en_route/game_phase

## Timer System
function mwj:system/common/time/tick

## Cannot Pickup
execute as @e[predicate=mwj:system/game_phase/projectile] run data merge entity @s {pickup:2b}

## Glow Time
effect give @a[predicate=mwj:system/game_phase/glowing] minecraft:glowing 1000000 1 true

## Count Death Score
execute as @a[predicate=mwj:system/game_phase/count_death/black] run scoreboard players remove #MWL BLACK 1
execute as @a[predicate=mwj:system/game_phase/count_death/white] run scoreboard players remove #MWL WHITE 1

## Detect Dropping Torch
loot give @a[predicate=mwj:items/torch/not_have] loot mwj:item/common/redstone_torch
scoreboard players reset @a[predicate=mwj:items/torch/not_have] RemovedTorch
scoreboard players set @a[predicate=mwj:items/torch/drop] RemovedTorch 1
kill @e[predicate=mwj:items/torch/dropped]

## Detect snowball
execute if predicate mwj:items/snowball/main run function mwj:system/game_phase/items/snowball/main

## Detect trident
execute if predicate mwj:items/trident/main run function mwj:system/game_phase/items/trident/main

## Detect conduit
execute if predicate mwj:items/conduit/main run function mwj:system/game_phase/items/conduit/main

## Detect honey block
execute if predicate mwj:items/honey_block/main run function mwj:system/game_phase/items/honey_block/main

## Detect soul lantern
execute if predicate mwj:items/lantern/main run function mwj:system/game_phase/items/soul_lantern/main

## Detect twisting vines
execute if predicate mwj:items/twisting_vines/main run function mwj:system/game_phase/items/twisting_vines/main

## Clever wolf System
execute as @a[predicate=mwj:system/game_phase/current_role/clever_wolf/main] run function mwj:system/game_phase/current_role/clever_wolf/main

## Fox System
execute as @a[predicate=mwj:system/game_phase/current_role/fox/main] run function mwj:system/game_phase/current_role/fox/main
execute as @a[predicate=mwj:system/game_phase/current_role/fox/seered] run function mwj:system/game_phase/current_role/fox/detect_seered

## Immoralist System
execute as @a[predicate=mwj:system/game_phase/current_role/immoral/main] run function mwj:system/game_phase/current_role/immoral/main

## Bakery System
execute as @a[predicate=mwj:system/game_phase/current_role/bakery/main] run function mwj:system/game_phase/current_role/bakery/main

## Seer System
execute as @a[predicate=mwj:system/game_phase/current_role/seer/main] run function mwj:system/game_phase/current_role/seer/main

## Fake Seer System
execute as @a[predicate=mwj:system/game_phase/current_role/fake_seer/main] run function mwj:system/game_phase/current_role/fake_seer/main

## Sage System
execute as @a[predicate=mwj:system/game_phase/current_role/sage/main] run function mwj:system/game_phase/current_role/sage/main

## Medium System
execute as @a[predicate=mwj:system/game_phase/current_role/medium/main] run function mwj:system/game_phase/current_role/medium/main

## Detective System
execute as @a[predicate=mwj:system/game_phase/current_role/detective/main] run function mwj:system/game_phase/current_role/detective/main

## Thief System
execute as @a[predicate=mwj:system/game_phase/current_role/thief/main] run function mwj:system/game_phase/current_role/thief/main

## Little Red System
execute as @a[predicate=mwj:system/game_phase/current_role/little_red/main] at @s run function mwj:system/game_phase/current_role/little_red/main

## Cat System
execute as @a[predicate=mwj:system/game_phase/current_role/cat/main] run function mwj:system/game_phase/current_role/cat/main

## 2nd Role System
execute as @a[predicate=mwj:system/game_phase/second_role/ghost/main] at @s run function mwj:system/game_phase/second_role/ghost/main
execute as @a[predicate=mwj:system/game_phase/second_role/drunk/main] at @s run function mwj:system/game_phase/second_role/drunk/main

## Kill Log System
function mwj:system/game_phase/kill_log/main

## Decide Winner
execute unless entity @p[predicate=mwj:player/test] run function mwj:system/finish/decide_winner/main

## Torch system
scoreboard players reset @a DropTorch