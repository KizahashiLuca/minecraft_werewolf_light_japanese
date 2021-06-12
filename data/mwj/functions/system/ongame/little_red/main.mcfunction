####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set grave
execute as @s[scores={DeathCount=1}] run function mwj:system/ongame/little_red/set_grave

## Main loop
execute as @s[tag=Cryptobiosis,scores={DeathCount=1..2}] run function mwj:system/ongame/little_red/in_grave

## Leave grave
execute if entity @p[tag=WereWolf,scores={CurrentRole=1..4,DeathCount=1}] as @s[tag=Cryptobiosis,scores={DeathCount=2}] run function mwj:system/ongame/little_red/leave_grave