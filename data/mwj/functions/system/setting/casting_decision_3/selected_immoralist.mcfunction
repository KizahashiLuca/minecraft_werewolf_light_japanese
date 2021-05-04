####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Immoralist
execute if score #MWL NumOfFoxes matches 1.. if score #MWL AddedRole matches 1.. run function mwj:system/setting/casting_decision_3/immoralist/already_fox_set

execute if score #MWL NumOfFoxes matches ..0 if score #MWL AddedRole matches 2.. run function mwj:system/setting/casting_decision_3/immoralist/not_yet_fox_set

function mwj:system/setting/casting_decision_common/set_inventory