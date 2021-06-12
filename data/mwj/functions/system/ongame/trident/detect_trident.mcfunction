####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Hit in branch
execute as @s[nbt={inGround:1b,pickup:2b}] run function mwj:system/ongame/trident/summon_thunderbolt
execute as @s[nbt={DealtDamage:1b}] run function mwj:system/ongame/trident/summon_thunderbolt

## Throw
execute as @a[scores={ThrowTrident=1..}] run function mwj:system/ongame/trident/throw_trident