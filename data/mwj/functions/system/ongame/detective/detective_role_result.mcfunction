###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Send a Message of Victim's role
execute as @s[scores={CurrentRole=1..4}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です。","color":"white"}]

execute as @s[scores={CurrentRole=5}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です。","color":"white"}]

execute as @s[scores={CurrentRole=10}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です。","color":"white"}]

execute as @s[scores={CurrentRole=20..40}] run tellraw @p[scores={CurrentRole=31,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です。","color":"white"}]