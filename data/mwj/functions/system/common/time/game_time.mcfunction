####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set message
bossbar set mwj:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]

## Set bossbar style
execute if score #MWL Second > #MWL GlowTime run bossbar set mwj:bossbar color green
execute if predicate mwj:system/common/time/bossbar/glow_time run bossbar set mwj:bossbar color yellow
execute if predicate mwj:system/common/time/bossbar/game_time_red run bossbar set mwj:bossbar color red