####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect Gamemode
execute if entity @p[tag=Host] run function mwj:system/finish/reject_game
execute unless entity @p[tag=Host] run function mwj:system/setting_phase/initial_setting/main