####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Timer System
function mwj:system/common/time/tick

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
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_torch",tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],Tags:["MWLitem"]}}}]

## Detect snowball
execute if score #MWL AddedSnowball matches 1 run function mwj:system/ongame/snowball/main

## Detect trident
execute if score #MWL AddedTrident matches 1 run function mwj:system/ongame/trident/main

## Detect conduit
execute if score #MWL AddedConduit matches 1 run function mwj:system/ongame/conduit/main

## Detect honey block
execute if score #MWL AddedHoneyBlock matches 1 run function mwj:system/ongame/honey_block/main

## Detect soul lantern
execute if score #MWL AddedLantern matches 1 run function mwj:system/ongame/soul_lantern/main

## Detect twisting vines
execute if score #MWL AddedVines matches 1 run function mwj:system/ongame/twisting_vines/main

## Clever wolf System
execute as @a[team=Player,scores={CurrentRole=3}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/clever_wolf/main

## Fox System
execute as @a[team=Player,scores={CurrentRole=10}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/fox/main
execute as @a[team=Player,tag=SeeredFox] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/fox/detect_seered

## Immoralist System
execute as @a[team=Player,scores={CurrentRole=11}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/immoral/main

## Bakery System
execute as @a[team=Player,scores={CurrentRole=21}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/bakery/main

## Seer System
execute as @a[team=Player,scores={CurrentRole=25}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/seer/main

## Fake Seer System
execute as @a[team=Player,scores={CurrentRole=26}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/fake_seer/main

## Sage System
execute as @a[team=Player,scores={CurrentRole=27}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/sage/main

## Medium System
execute as @a[team=Player,scores={CurrentRole=28}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/medium/main

## Detective System
execute as @a[team=Player,scores={CurrentRole=31}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/detective/main

## Thief System
execute as @a[team=Player,scores={CurrentRole=35}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/thief/main

## Little Red System
execute as @a[team=Player,scores={CurrentRole=39}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/little_red/main

## Cat System
execute as @a[team=Player,scores={CurrentRole=40}] if score #MWL IsEndGame matches 0 run function mwj:system/ongame/cat/main

## Kill Log System
function mwj:system/ongame/kill_log/main

## Decide Winner
execute unless entity @p[tag=MWLtest] run function mwj:system/finish/decide_winner/main

## Torch system
scoreboard players reset @a[team=Player] DropTorch
scoreboard players reset @a[team=Player] SneakTime