####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Log-in midtime of game phase
execute as @a[tag=!Host,team=!Player,gamemode=!spectator] run function mwj:system/common/en_route/game_phase
execute as @a[team=Player,scores={CurrentRole=0},gamemode=!spectator] run function mwj:system/common/en_route/game_phase

## Timer System
function mwj:system/common/time/tick

## Cannot Pickup
execute as @e[predicate=mwj:game_phase/projectile] run data merge entity @s {pickup:2b}

## Glow Time
effect give @a[predicate=mwj:game_phase/glowing] minecraft:glowing 1000000 1 true

## Count Death Score
execute as @a[predicate=mwj:game_phase/count_death/black] run scoreboard players remove #MWL BLACK 1
execute as @a[predicate=mwj:game_phase/count_death/white] run scoreboard players remove #MWL WHITE 1

## Detect Dropping Torch
loot give @a[predicate=mwj:items/torch/not_have] loot mwj:item/common/redstone_torch
scoreboard players reset @a[predicate=mwj:items/torch/not_have] RemovedTorch
scoreboard players set @a[predicate=mwj:items/torch/drop] RemovedTorch 1
kill @e[predicate=mwj:items/torch/dropped]

## Detect snowball
execute if predicate mwj:items/snowball/main run function mwj:system/game_phase/snowball/main

## Detect trident
execute if score #MWL ChooseTrident matches 1 run function mwj:system/game_phase/trident/main

## Detect conduit
execute if predicate mwj:items/conduit/main run function mwj:system/game_phase/conduit/main

## Detect honey block
execute if predicate mwj:items/honey_block/main run function mwj:system/game_phase/honey_block/main

## Detect soul lantern
execute if predicate mwj:items/lantern/main run function mwj:system/game_phase/soul_lantern/main

## Detect twisting vines
execute if predicate mwj:items/twisting_vines/main run function mwj:system/game_phase/twisting_vines/main

## Clever wolf System
execute as @a[team=Player,scores={CurrentRole=3,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/clever_wolf/main

## Fox System
execute as @a[team=Player,scores={CurrentRole=10,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/fox/main
execute as @a[team=Player,tag=SeeredFox] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/fox/detect_seered

## Immoralist System
execute as @a[team=Player,scores={CurrentRole=11,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/immoral/main

## Bakery System
execute as @a[team=Player,scores={CurrentRole=21,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/bakery/main

## Seer System
execute as @a[team=Player,scores={CurrentRole=25,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/seer/main

## Fake Seer System
execute as @a[team=Player,scores={CurrentRole=26,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/fake_seer/main

## Sage System
execute as @a[team=Player,scores={CurrentRole=27,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/sage/main

## Medium System
execute as @a[team=Player,scores={CurrentRole=28,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/medium/main

## Detective System
execute as @a[team=Player,scores={CurrentRole=31,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/detective/main

## Thief System
execute as @a[team=Player,scores={CurrentRole=35,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/thief/main

## Little Red System
execute as @a[team=Player,scores={CurrentRole=39,2ndRoleDone=1}] at @s if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/little_red/main

## Cat System
execute as @a[team=Player,scores={CurrentRole=40,2ndRoleDone=1}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/cat/main

## 2nd Role System
execute as @a[team=Player,tag=!Cryptobiosis,scores={Set2ndRole=1}] at @s run function mwj:system/game_phase/2ndrole/ghost/main
execute as @a[team=Player,scores={Set2ndRole=2}] at @s run function mwj:system/game_phase/2ndrole/drunk/main

## Kill Log System
function mwj:system/game_phase/kill_log/main

## Decide Winner
execute unless entity @p[tag=MWLtest] run function mwj:system/finish/decide_winner/main

## Torch system
scoreboard players reset @a[team=Player] DropTorch