####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Process
execute if entity @p[scores={FlagOfKiller=1}] run scoreboard players set @s FlagOfKiller 2
execute unless entity @p[scores={FlagOfKiller=1}] run scoreboard players set @s FlagOfKiller 3

execute if entity @p[scores={FlagOfKiller=1}] run scoreboard players operation @s NumberOfKiller = @p[scores={FlagOfKiller=1}] NumOfPlayers
execute unless entity @p[scores={FlagOfKiller=1}] run scoreboard players operation @s NumberOfKiller = @p[scores={FlagOfKiller=2}] NumOfPlayers