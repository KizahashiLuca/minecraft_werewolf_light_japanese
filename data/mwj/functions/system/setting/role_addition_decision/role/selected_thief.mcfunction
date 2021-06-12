####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Thief
execute if score #MWL AddedRole matches 1.. run scoreboard players add #MWL AddedThief 1
execute if score #MWL AddedRole matches 1.. run scoreboard players remove #MWL AddedRole 1
function mwj:system/setting/role_addition_decision/common/set_inventory