####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Fox Dead
kill @s

tellraw @s [""]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s ["",{"text":"  ","color":"white"},{"selector":"@s","color":"white"},{"text":" は最後の羽衣狐が死亡したため、"}]
tellraw @s ["",{"text":"  後追い自殺しました。","color":"white"}]
tellraw @s ["",{"text":"----------------------------------","color":"white"}]
tellraw @s [""]

scoreboard players set @s RoleDone 1