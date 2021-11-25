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
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:2b}
execute as @e[type=minecraft:trident] run data merge entity @s {pickup:2b}

## Glow Time
execute if score #MWL Second <= #MWL GlowTime run effect give @a[team=Player,scores={DeathCount=0}] minecraft:glowing 1000000 1 true

## Count Death Score
execute as @a[team=Player,scores={CurrentRole=1..4,DeathCount=1}] run scoreboard players remove #MWL BLACK 1
execute as @a[team=Player,scores={CurrentRole=20..40,DeathCount=1}] run scoreboard players remove #MWL WHITE 1

## Detect Dropping Torch
execute as @a[team=Player,scores={RemovedTorch=1..}] run loot give @s loot mwj:item/common/redstone_torch
scoreboard players reset @a[team=Player,scores={RemovedTorch=1..}] RemovedTorch
scoreboard players set @a[team=Player,scores={DropTorch=1..}] RemovedTorch 1
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch",tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],Tags:["MWLitem"]}}}]

## Detect snowball
execute if score #MWL ChooseSnowball matches 1 run function mwj:system/game_phase/snowball/main

## Detect trident
execute if score #MWL ChooseTrident matches 1 run function mwj:system/game_phase/trident/main

## Detect conduit
execute if predicate mwj:game_phase/honey_block/main run function mwj:system/game_phase/conduit/main

## Detect honey block
execute if predicate mwj:game_phase/honey_block/main run function mwj:system/game_phase/honey_block/main

## Detect soul lantern
execute if predicate mwj:game_phase/lantern/main run function mwj:system/game_phase/soul_lantern/main

## Detect twisting vines
execute if predicate mwj:game_phase/twisting_vines/main run function mwj:system/game_phase/twisting_vines/main

## Clever wolf System
execute as @a[team=Player,scores={CurrentRole=3}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/clever_wolf/main

## Fox System
execute as @a[team=Player,scores={CurrentRole=10}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/fox/main
execute as @a[team=Player,tag=SeeredFox] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/fox/detect_seered

## Immoralist System
execute as @a[team=Player,scores={CurrentRole=11}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/immoral/main

## Bakery System
execute as @a[team=Player,scores={CurrentRole=21}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/bakery/main

## Seer System
execute as @a[team=Player,scores={CurrentRole=25}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/seer/main

## Fake Seer System
execute as @a[team=Player,scores={CurrentRole=26}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/fake_seer/main

## Sage System
execute as @a[team=Player,scores={CurrentRole=27}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/sage/main

## Medium System
execute as @a[team=Player,scores={CurrentRole=28}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/medium/main

## Detective System
execute as @a[team=Player,scores={CurrentRole=31}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/detective/main

## Thief System
execute as @a[team=Player,scores={CurrentRole=35}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/thief/main

## Little Red System
execute as @a[team=Player,scores={CurrentRole=39}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/little_red/main

## Cat System
execute as @a[team=Player,scores={CurrentRole=40}] if score #MWL IsEndGame matches 0 run function mwj:system/game_phase/cat/main

## Kill Log System
function mwj:system/game_phase/kill_log/main

## Decide Winner
execute unless entity @p[tag=MWLtest] run function mwj:system/finish/decide_winner/main

## Torch system
scoreboard players reset @a[team=Player] DropTorch