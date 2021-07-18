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
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] run function mwj:system/setting/choose_game_rule/set_inventory
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}]

## Change to each mode
execute if score #MWL Phase matches 84 as @p[tag=Host,predicate=mwj:setting/choose_game_rule/game_mode] run function mwj:system/setting/choose_game_rule/change_game_mode
execute if score #MWL Phase matches 84 as @p[tag=Host,predicate=mwj:setting/choose_game_rule/dummyrole_mode] run function mwj:system/setting/choose_game_rule/change_dummyrole_mode
execute if score #MWL Phase matches 84 as @p[tag=Host,predicate=mwj:setting/choose_game_rule/cast_mode] run function mwj:system/setting/choose_game_rule/change_cast_mode

execute if score #MWL Phase matches 84 as @p[tag=Host,predicate=mwj:setting/common/cancel] run function mwj:system/setting/choose_game_rule/selected_cancel
execute if score #MWL Phase matches 84 as @p[tag=Host,predicate=mwj:setting/common/reset] run function mwj:system/setting/choose_game_rule/reset_game_rule
execute if score #MWL Phase matches 84 as @p[tag=Host,predicate=mwj:setting/common/ok] run function mwj:system/setting/choose_game_rule/selected_ok