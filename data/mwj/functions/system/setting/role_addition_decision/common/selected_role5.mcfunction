####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set AddedRole5
scoreboard players remove #MWL AddedRoleTmp 1
execute if score #MWL AddedRoleTmp matches 1.. run loot give @p[tag=Host] loot mwj:setting/role_addition/nether_star_role5
execute if score #MWL AddedRoleTmp matches 2.. run function mwj:system/setting/role_addition_decision/common/selected_role5