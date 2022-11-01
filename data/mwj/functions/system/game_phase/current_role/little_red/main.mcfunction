####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set grave
execute as @s[scores={DeathCount=1}] run function mwj:system/game_phase/current_role/little_red/set_grave

## Main loop
execute as @s[tag=Cryptobiosis,scores={DeathCount=1..2}] run function mwj:system/game_phase/current_role/little_red/in_grave

## Leave grave
execute if entity @p[tag=WereWolf,scores={CurrentRole=1..4,DeathCount=1}] as @s[tag=Cryptobiosis,scores={DeathCount=2}] run function mwj:system/game_phase/current_role/little_red/leave_grave