####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Honey block
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:honey_bottle"}]}] run function mwj:system/ongame/honey_block/clear_honey_bottle
execute as @a[team=Player,scores={DropHoneyBlock=1..,SneakTime=1..}] run function mwj:system/ongame/honey_block/set_honey_block
scoreboard players set @a[team=Player,scores={DropHoneyBlock=1..,SneakTime=1..}] SneakTime 0
scoreboard players remove @a[team=Player,scores={DropHoneyBlock=1..}] DropHoneyBlock 1
scoreboard players reset @a[team=Player,scores={DropHoneyBlock=..0}] DropHoneyBlock
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:honey_block",tag:{Tags:["MWLitem"]}}},scores={NumOfPlayers=1..}] at @s run function mwj:system/ongame/honey_block/summon_area_effect_cloud

## Effect
effect clear @a[team=Player,scores={DeathCount=0}] minecraft:slowness
execute as @e[type=minecraft:area_effect_cloud,tag=HoneyBlock] run function mwj:system/ongame/honey_block/effect_player