####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send a Common Message
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] [""]
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"  予言結果","color":"white"}]

## Send a Message that Suspect is always White
execute as @s[scores={CurrentRole=1..40}] run tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=26,RoleOfNum=1}] [""]

## Seer Role Done
scoreboard players set @p[scores={CurrentRole=26,RoleOfNum=1}] RoleDone 1

## Reset Seer Trigger
scoreboard players reset @p[scores={CurrentRole=26,RoleOfNum=1}] TargetOfRole