####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/game_mode_decision/detect_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] SelectNormalWolf 1
scoreboard players set @p[tag=Host] SelectTwoAlive 1
scoreboard players set @p[tag=Host] SelectAnnihilate 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1
scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:map",tag:{Tags:["MWLsetting","NormalWolf"]}}]}] SelectNormalWolf 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MWLsetting","TwoAlive"]}}]}] SelectTwoAlive 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:map",tag:{Tags:["MWLsetting","Annihilation"]}}]}] SelectAnnihilate 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MWLsetting"]}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MWLsetting"]}}]}] SelectOkay 0
execute if score #MWL GameMode matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameMode matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameMode matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectNormalWolf=1}] run function mwj:system/setting/game_mode_decision/selected_normal_wolf
execute as @p[tag=Host,scores={SelectTwoAlive=1}] run function mwj:system/setting/game_mode_decision/selected_two_alive
execute as @p[tag=Host,scores={SelectAnnihilate=1}] run function mwj:system/setting/game_mode_decision/selected_annihilation
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/game_mode_decision/selected_cancel
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/game_mode_decision/selected_ok
execute as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/game_mode_decision/change_to