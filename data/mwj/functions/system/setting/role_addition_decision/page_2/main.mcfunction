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
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:purple_stained_glass",tag:{Tags:["MWLsetting","AddedFox"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:purple_concrete",tag:{Tags:["MWLsetting","AddedImmoral"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lime_stained_glass",tag:{Tags:["MWLsetting","AddedVilla"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:lime_concrete",tag:{Tags:["MWLsetting","AddedBakery"]}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:lime_concrete_powder",tag:{Tags:["MWLsetting","AddedLycant"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/role_addition_decision/role/selected_fox
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/role_addition_decision/role/selected_immoralist
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/role_addition_decision/role/selected_villager
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/role_addition_decision/role/selected_bakery
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/role_addition_decision/role/selected_lycanthrope