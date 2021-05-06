####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:elytra",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:snowball",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:potion",Count:1b,tag:{Tags:["MWLitem","potion_invisible"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:potion",Count:1b,tag:{Tags:["MWLitem","potion_speed"]}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:potion",Count:1b,tag:{Tags:["MWLitem","potion_jump"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/item_addition_decision/item/selected_elytra
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/item_addition_decision/item/selected_snowball
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/item_addition_decision/item/selected_potion_invisible
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/item_addition_decision/item/selected_potion_speed
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/item_addition_decision/item/selected_potion_jump