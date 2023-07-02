####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set message
bossbar set mwj:bossbar name [{"text":"潜伏時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]

## Set bossbar style
execute if predicate mwj:system/common/time/bossbar/green run bossbar set mwj:bossbar color green
execute if predicate mwj:system/common/time/bossbar/yellow run bossbar set mwj:bossbar color yellow
execute if predicate mwj:system/common/time/bossbar/hide_time_red run bossbar set mwj:bossbar color red