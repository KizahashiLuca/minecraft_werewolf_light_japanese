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
execute if entity @e[predicate=mwj:setting/common/throw_item] run function mwj:system/setting/choose_glow_time/set_inventory
kill @e[predicate=mwj:setting/common/throw_item]

## Change to each mode
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/glow_time_master] run function mwj:system/setting/choose_glow_time/set_inventory
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/digit_100] run function mwj:system/setting/choose_glow_time/glow_time_add100
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/digit_010] run function mwj:system/setting/choose_glow_time/glow_time_add010
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/digit_001] run function mwj:system/setting/choose_glow_time/glow_time_add001
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/percent] run function mwj:system/setting/choose_glow_time/set_inventory
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/cancel] run function mwj:system/setting/choose_glow_time/selected_cancel
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/reset] run function mwj:system/setting/choose_glow_time/reset_glow_time
execute as @p[tag=Host,predicate=mwj:setting/choose_glow_time/ok] run function mwj:system/setting/choose_glow_time/selected_ok