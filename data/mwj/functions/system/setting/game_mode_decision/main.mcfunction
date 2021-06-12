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
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] run function mwj:system/setting/game_mode_decision/set_inventory
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}]

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:map",tag:{Tags:["MWLsetting",\"MWL_game_mode_normal_wolf\"]}}]}] SelectNormalWolf 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MWLsetting",\"MWL_game_mode_two_alive\"]}}]}] SelectTwoAlive 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:map",tag:{Tags:["MWLsetting",\"MWL_game_mode_annihilation\"]}}]}] SelectAnnihilate 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MWLsetting",\"MWL_cancel\"]}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MWLsetting",\"MWL_ok\"]}}]}] SelectOkay 0
execute if score #MWL GameMode matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameMode matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameMode matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0

## Function Each Mode
execute if score #MWL Phase matches 84 as @p[tag=Host,predicate=mwj:setting/] run function mwj:system/setting/game_mode_decision/selected_normal_wolf
execute if score #MWL Phase matches 84 as @p[tag=Host,scores={SelectTwoAlive=1}] run function mwj:system/setting/game_mode_decision/selected_two_alive
execute if score #MWL Phase matches 84 as @p[tag=Host,scores={SelectAnnihilate=1}] run function mwj:system/setting/game_mode_decision/selected_annihilation
execute if score #MWL Phase matches 84 as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/game_mode_decision/set_inventory
execute if score #MWL Phase matches 84 as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/game_mode_decision/selected_cancel
execute if score #MWL Phase matches 84 as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/game_mode_decision/selected_ok