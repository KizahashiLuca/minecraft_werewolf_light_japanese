###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Set Team
function mwj:system/setting/initial_setting/set_initial_team

## Change gamerules
function mwj:system/setting/initial_setting/set_initial_gamerule

## Set Scoreboard
function mwj:system/setting/initial_setting/set_initial_scoreboard

## Set Role Number
function mwj:system/setting/initial_setting/set_initial_role_number
function mwj:system/setting/initial_setting/set_initial_added_role_number
scoreboard players operation Time AddedVilla = Time AddedRole
scoreboard players operation Time PrevAddedRole = Time AddedRole
scoreboard players operation Time PrevAddedVilla = Time PrevAddedRole
scoreboard players set Time AddedRole 0

## Set Title
function mwj:system/setting/initial_setting/set_initial_title

## Set Inventory
function mwj:system/setting/choose_mode/change_to_choose_mode