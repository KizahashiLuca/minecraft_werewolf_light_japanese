###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: beta-1.6
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
execute as @a[team=Player,scores={RemovedTorch=1..}] run function mwj:system/preparation/item/common/torch
scoreboard players set @a[team=Player,scores={RemovedTorch=1}] RemovedTorch 0
scoreboard players set @a[team=Player,scores={DropTorch=1..}] RemovedTorch 1
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch",tag:{display:{Name:'"\\u00A7r\\u00A7b杖"',Lore:['"\\u00a7r\\u00A7f捨てることで役職利用可能"']},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}}]

## Detect snowball
execute if score #MWL AddedSnowball matches 1 run function mwj:system/ongame/snowball/snowball_main

## Detect trident
execute if score #MWL AddedTrident matches 1 run function mwj:system/ongame/trident/trident_main

## Detect conduit
execute if score #MWL AddedConduit matches 1 run function mwj:system/ongame/conduit/conduit_main

## Detect honey block
execute if score #MWL Version matches 15.. if score #MWL AddedHoneyBlock matches 1 run function mwj:system/ongame/honey_block/honey_block_main

## Detect soul lantern
execute if score #MWL Version matches 16.. if score #MWL AddedLantern matches 1 run function mwj:system/ongame/soul_lantern/soul_lantern_main

## Fox System
execute as @a[team=Player,scores={CurrentRole=10}] run function mwj:system/ongame/fox/fox_main
execute as @a[team=Player,tag=SeeredFox] run function mwj:system/ongame/fox/fox_seered

## Seer System
execute as @a[team=Player,scores={CurrentRole=25}] run function mwj:system/ongame/seer/seer_main

## Fake Seer System
execute as @a[team=Player,scores={CurrentRole=26}] run function mwj:system/ongame/fake_seer/fake_seer_main

## Medium System
execute as @a[team=Player,scores={CurrentRole=28}] run function mwj:system/ongame/medium/medium_main

## Detective System
execute as @a[team=Player,scores={CurrentRole=31}] run function mwj:system/ongame/detective/detective_main

## Thief System
execute as @a[team=Player,scores={CurrentRole=35}] run function mwj:system/ongame/thief/thief_main

## Cat System
execute as @a[team=Player,scores={CurrentRole=40}] run function mwj:system/ongame/cat/cat_main

## Kill Log System
function mwj:system/ongame/kill_log/kill_log_main

## Decide Winner
execute unless entity @p[tag=MWLtest] run function mwj:system/finish/decide_winner/decide_winner_main

## Torch system
scoreboard players set @a[team=Player] DropTorch 0
scoreboard players set @a[team=Player] SneakTime 0

## Exit This Game
execute if score #MWL Phase matches 0 run function mwj:system/finish/end_game
