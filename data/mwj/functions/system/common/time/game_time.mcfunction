####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set message
bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]

## Set bossbar style
execute if score #MWL Second > #MWL ChangeGlowTime run bossbar set minecraft:bossbar color green
execute if score #MWL Second <= #MWL ChangeGlowTime run bossbar set minecraft:bossbar color yellow
execute if score #MWL Second matches 0..10 run bossbar set minecraft:bossbar color red