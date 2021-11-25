####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Give milk bucket
give @s[advancements={mwj:killed_player=true}] minecraft:milk_bucket

## Consume milk
execute as @s[advancements={mwj:drink_milk=true}] run function mwj:system/game_phase/2ndrole/drunk/tell_roles/main