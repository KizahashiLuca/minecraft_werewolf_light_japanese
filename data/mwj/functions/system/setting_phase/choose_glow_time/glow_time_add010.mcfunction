####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add 10 percents
scoreboard players add #MWL GlowTime 10
execute if score #MWL GlowTime matches 110 run scoreboard players set #MWL GlowTime 0
execute if score #MWL GlowTime matches 101.. run scoreboard players remove #MWL GlowTime 100

## Set inventory
function mwj:system/setting_phase/choose_glow_time/set_inventory