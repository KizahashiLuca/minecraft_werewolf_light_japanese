####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set bossbar
bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL SetGameTime
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL Second

## Set bossbar style
bossbar set minecraft:bossbar style notched_10
bossbar set minecraft:bossbar color green