####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Mason
execute if score #MWL AddedRole matches 2.. run scoreboard players add #MWL NumOfMasons 2
execute if score #MWL AddedRole matches 2.. run scoreboard players remove #MWL AddedRole 2
function mwj:system/setting/casting_decision_common/set_inventory