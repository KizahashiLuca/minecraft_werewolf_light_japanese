###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Timer System
function mwj:system/time/time

## Cannot Pickup
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:2b}
execute as @e[type=minecraft:trident] run data merge entity @s {pickup:2b}

## Glow Time
execute if score #MWL Second <= #MWL ChangeGlowTime run effect give @a[team=Player,scores={DeathCount=0}] minecraft:glowing 1000000 1 true

## Count Death Score
execute as @a[team=Player,scores={CurrentRole=1..4,DeathCount=1}] run scoreboard players remove #MWL BLACK 1
execute as @a[team=Player,scores={CurrentRole=20..40,DeathCount=1}] run scoreboard players remove #MWL WHITE 1

## Detect Dropping Torch
execute as @a[team=Player,scores={RemovedTorch=1..}] run loot give @s loot mwj:item/common/redstone_torch
scoreboard players reset @a[team=Player,scores={RemovedTorch=1..}] RemovedTorch
scoreboard players set @a[team=Player,scores={DropTorch=1..}] RemovedTorch 1
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch",tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],Tags:"MWLitem"}}}]

## Detect snowball
execute if score #MWL AddedSnowball matches 1 run function mwj:system/ongame/snowball/main

## Detect trident
execute if score #MWL AddedTrident matches 1 run function mwj:system/ongame/trident/main

## Detect conduit
execute if score #MWL AddedConduit matches 1 run function mwj:system/ongame/conduit/main

## Detect honey block
execute if score #MWL Version matches 15.. if score #MWL AddedHoneyBlock matches 1 run function mwj:system/ongame/honey_block/main

## Detect soul lantern
execute if score #MWL Version matches 16.. if score #MWL AddedLantern matches 1 run function mwj:system/ongame/soul_lantern/main

## Fox System
execute as @a[team=Player,scores={CurrentRole=10}] run function mwj:system/ongame/fox/main
execute as @a[team=Player,tag=SeeredFox] run function mwj:system/ongame/fox/detect_seered

## Immoralist System
execute as @a[team=Player,scores={CurrentRole=11,DeathCount=0,RoleDone=0}] if score #MWL PURPLE matches ..0 run function mwj:system/ongame/immoral/main
execute as @a[team=Player,scores={CurrentRole=11,DeathCount=1,RoleDone=0}] run function mwj:system/ongame/immoral/detect_dead

## Seer System
execute as @a[team=Player,scores={CurrentRole=25}] run function mwj:system/ongame/seer/main

## Fake Seer System
execute as @a[team=Player,scores={CurrentRole=26}] run function mwj:system/ongame/fake_seer/main

## Sage System
execute as @a[team=Player,scores={CurrentRole=27}] run function mwj:system/ongame/sage/main

## Medium System
execute as @a[team=Player,scores={CurrentRole=28}] run function mwj:system/ongame/medium/main

## Detective System
execute as @a[team=Player,scores={CurrentRole=31}] run function mwj:system/ongame/detective/main

## Thief System
execute as @a[team=Player,scores={CurrentRole=35}] run function mwj:system/ongame/thief/main

## Cat System
execute as @a[team=Player,scores={CurrentRole=40}] run function mwj:system/ongame/cat/main

## Kill Log System
function mwj:system/ongame/kill_log/main

## Decide Winner
execute unless entity @p[tag=MWLtest] run function mwj:system/finish/decide_winner/main

## Torch system
scoreboard players reset @a[team=Player] DropTorch
scoreboard players reset @a[team=Player] SneakTime

## Exit This Game
execute if score #MWL Phase matches 0 run function mwj:system/finish/end_game
