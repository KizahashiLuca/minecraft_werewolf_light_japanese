####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set bossbar
bossbar set mwj:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#MWL","objective":"Second"}},{"text":" 秒"}]
scoreboard players set #MWL BossbarMax 20
scoreboard players operation #MWL BossbarMax *= #MWL SetGameTime
scoreboard players set #MWL BossbarVal 20
scoreboard players operation #MWL BossbarVal *= #MWL Second
execute store result bossbar mwj:bossbar max run scoreboard players get #MWL BossbarMax
execute store result bossbar mwj:bossbar value run scoreboard players get #MWL BossbarVal

## Set bossbar style
bossbar set mwj:bossbar style notched_10
bossbar set mwj:bossbar color green