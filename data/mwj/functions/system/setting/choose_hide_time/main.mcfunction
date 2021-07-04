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
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] run function mwj:system/setting/choose_hide_time/set_inventory
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}]

## Change to each mode
execute if score #MWL Phase matches 81 as @p[tag=Host,predicate=mwj:setting/choose_hide_time/hide_time_master] run function mwj:system/setting/choose_hide_time/set_inventory
execute if score #MWL Phase matches 81 as @p[tag=Host,predicate=mwj:setting/choose_hide_time/hide_time_100] run function mwj:system/setting/choose_hide_time/hide_time_add100
execute if score #MWL Phase matches 81 as @p[tag=Host,predicate=mwj:setting/choose_hide_time/hide_time_010] run function mwj:system/setting/choose_hide_time/hide_time_add010
execute if score #MWL Phase matches 81 as @p[tag=Host,predicate=mwj:setting/choose_hide_time/hide_time_001] run function mwj:system/setting/choose_hide_time/hide_time_add001
execute if score #MWL Phase matches 81 as @p[tag=Host,predicate=mwj:setting/choose_hide_time/second] run function mwj:system/setting/choose_hide_time/set_inventory

execute if score #MWL Phase matches 81 as @p[tag=Host,predicate=mwj:setting/common/cancel] run function mwj:system/setting/choose_hide_time/selected_cancel
execute if score #MWL Phase matches 81 as @p[tag=Host,predicate=mwj:setting/choose_hide_time/reset_hide_time] run function mwj:system/setting/choose_hide_time/reset_hide_time
execute if score #MWL Phase matches 81 if score #MWL HideTime matches 1.. as @p[tag=Host,predicate=mwj:setting/common/ok] run function mwj:system/setting/choose_hide_time/selected_ok