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
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] [""]
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"  霊媒結果","color":"white"}]

## Send a Message that Victim is Alive
execute as @s[scores={DeathCount=0}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は 生きています","color":"white"}]

## Send a Message that Victim is Black
execute as @s[scores={CurrentRole=1..3,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White Wolf
execute as @s[scores={CurrentRole=4,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=5..9,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is Fox
execute as @s[scores={CurrentRole=10,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=11..21,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is Black - Lycanthrope
execute as @s[scores={CurrentRole=22,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=23..38,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=39,DeathCount=1..2},tag=Cryptobiosis] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"仮死状態","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=39,DeathCount=1..2},tag=!Cryptobiosis] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Victim is White
execute as @s[scores={CurrentRole=40,DeathCount=1..2}] run tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=28,RoleOfNum=1}] [""]

## Medium Role Done
scoreboard players set @p[scores={CurrentRole=28,RoleOfNum=1}] RoleDone 1

## Reset Medium Trigger
scoreboard players reset @p[scores={CurrentRole=28,RoleOfNum=1}] TargetOfRole