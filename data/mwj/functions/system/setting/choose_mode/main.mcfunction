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
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] run function mwj:system/setting/choose_mode/set_inventory
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}]

## Function Each Mode
execute if score #MWL Phase matches 80 as @p[tag=Host,predicate=mwj:setting/choose_mode/set_casting] run function mwj:system/setting/choose_mode/set_casting
execute if score #MWL Phase matches 80 if score #MWL SetCasting matches 0 as @p[tag=Host,predicate=mwj:setting/choose_mode/set_dummy_role] run function mwj:system/setting/choose_mode/set_dummy_role_cast_off
execute if score #MWL Phase matches 80 if score #MWL SetCasting matches 1 as @p[tag=Host,predicate=mwj:setting/choose_mode/set_dummy_role] run function mwj:system/setting/choose_mode/set_dummy_role_cast_on
execute if score #MWL Phase matches 80 as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_hide_time] run function mwj:system/setting/choose_hide_time/change_to
execute if score #MWL Phase matches 80 as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_glow_time] run function mwj:system/setting/glow_time_decision/change_to
execute if score #MWL Phase matches 80 as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_game_time] run function mwj:system/setting/game_time_decision/change_to
execute if score #MWL Phase matches 80 as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_game_mode] run function mwj:system/setting/game_mode_decision/change_to
execute if score #MWL Phase matches 80 as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_item_addition] run function mwj:system/setting/item_addition_decision/common/set_inventory
execute if score #MWL Phase matches 80 if score #MWL SetCasting matches 0 if score #MWL AddedRoleNumber matches 1.. as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_role_addition] run function mwj:system/setting/role_addition_decision/common/set_inventory
execute if score #MWL Phase matches 80 if score #MWL SetCasting matches 1 as @p[tag=Host,predicate=mwj:setting/choose_mode/choose_casting] run function mwj:system/setting/casting_decision/common/set_inventory
execute if score #MWL Phase matches 80 as @p[tag=Host,predicate=mwj:setting/choose_mode/select_cancel] run function mwj:stop

execute if score #MWL Phase matches 80 if score #MWL GameMode matches 1 if score #MWL NumOfWhite > #MWL NumOfBlack if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. as @p[tag=Host,predicate=mwj:setting/choose_mode/select_ok] run function mwj:system/setting/choose_mode/exit_setting
execute if score #MWL Phase matches 80 if score #MWL GameMode matches 2 if score #MWL NumOfWhite matches 2.. if score #MWL NumOfBlack matches 1.. as @p[tag=Host,predicate=mwj:setting/choose_mode/select_ok] run function mwj:system/setting/choose_mode/exit_setting
execute if score #MWL Phase matches 80 if score #MWL GameMode matches 3 if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. as @p[tag=Host,predicate=mwj:setting/choose_mode/select_ok] run function mwj:system/setting/choose_mode/exit_setting