####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Process
execute if entity @p[scores={FlagOfKiller=1}] run scoreboard players set @s FlagOfKiller 2
execute unless entity @p[scores={FlagOfKiller=1}] run scoreboard players set @s FlagOfKiller 3

execute if entity @p[scores={FlagOfKiller=1}] run scoreboard players operation @s NumberOfKiller = @p[scores={FlagOfKiller=1}] NumOfPlayers
execute unless entity @p[scores={FlagOfKiller=1}] run scoreboard players operation @s NumberOfKiller = @p[scores={FlagOfKiller=2}] NumOfPlayers