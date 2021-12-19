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
tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] [""]
tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"  予言結果","color":"white"}]

## Send a Message that Suspect is Black
execute as @s[scores={CurrentRole=1..3,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=4..9,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is Fox
execute as @s[scores={CurrentRole=10,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"羽衣狐","color":"dark_purple","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=11..21,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is Black - Lycanthrope
execute as @s[scores={CurrentRole=22,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"黒","color":"red","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is White
execute as @s[scores={CurrentRole=23..40,2ndRoleDone=1..}] run tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"白","color":"green","bold":true},{"text":" です","color":"white"}]

## Send a Message that Suspect is Drunk
execute as @s[scores={2ndRoleDone=0}] run tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" は ","color":"white"},{"text":"酔っ払い","color":"green","bold":true},{"text":" 状態です","color":"white"}]

## Send a Common Message
tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] ["",{"text":"----------------------------------","color":"white"}]
tellraw @p[scores={CurrentRole=3,TagOfRoleWork=1}] [""]

## Clever Wolf Role Done
scoreboard players set @p[scores={CurrentRole=3,TagOfRoleWork=1}] RoleDone 1

## Reset Clever Wolf Trigger
scoreboard players reset @p[scores={CurrentRole=3,TagOfRoleWork=1}] TargetOfRole
