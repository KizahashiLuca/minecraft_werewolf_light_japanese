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
execute if entity @e[predicate=mwj:setting/common/throw_item] run function mwj:system/setting/choose_mode/set_inventory
kill @e[predicate=mwj:setting/common/throw_item]

## Function Each Mode
execute as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_hide_time] run function mwj:system/setting/choose_hide_time/change_to
execute as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_glow_time] run function mwj:system/setting/choose_glow_time/change_to
execute as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_game_time] run function mwj:system/setting/choose_game_time/change_to
execute as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_game_rule] run function mwj:system/setting/choose_game_rule/change_to
execute as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_item] run function mwj:system/setting/choose_item/common/change_to
execute as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_role] run function mwj:system/setting/choose_role/common/change_to

execute as @p[tag=Host,predicate=mwj:setting/choose_mode/select_cancel] run function mwj:stop
execute as @p[tag=Host,predicate=mwj:setting/choose_mode/select_ok] run function mwj:system/setting/choose_mode/exit_setting