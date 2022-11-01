####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Select Random StrayBullet
execute as @s[scores={DeathCount=1}] run function mwj:system/game_phase/current_role/cat/decide_stray_bullet

## Send a Message to a StrayBullet Player
execute if score @s[scores={DeathCount=2}] NumOfPlayers = @p[tag=StrayBullet] KilledByCat run function mwj:system/game_phase/current_role/cat/message_to_stray_bullet