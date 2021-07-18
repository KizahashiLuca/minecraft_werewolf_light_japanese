####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 1 percent
scoreboard players add #MWL GlowTime 1
execute if score #MWL GlowTime matches 101.. run scoreboard players set #MWL GlowTime 0

## Set inventory
function mwj:system/setting/choose_glow_time/set_inventory