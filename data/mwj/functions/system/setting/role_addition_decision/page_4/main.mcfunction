####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:cyan_stained_glass",tag:{Tags:["MWLsetting","AddedDetec"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:blue_stained_glass",tag:{Tags:["MWLsetting","AddedThief"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:orange_concrete",tag:{Tags:["MWLsetting","AddedLtRed"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:orange_stained_glass",tag:{Tags:["MWLsetting","AddedCat"]}}]}] SelectItem4 0
# scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:",tag:{Tags:["MWLsetting","Added"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/role_addition_decision/role/selected_detective
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/role_addition_decision/role/selected_thief
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/role_addition_decision/role/selected_little_red
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/role_addition_decision/role/selected_cat
# execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/role_addition_decision/role/selected_