####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Variables for Role
execute as @a run scoreboard players operation @s PrevRole = @s CurrentRole
#### Clever Wolf
scoreboard players set @a[scores={CurrentRole=3}] TurnPageNum 0
scoreboard players enable @a[scores={CurrentRole=3}] TurnPageRight
scoreboard players enable @a[scores={CurrentRole=3}] TurnPageLeft
scoreboard players enable @a[scores={CurrentRole=3}] RoleTrigger
#### Bakery
scoreboard players set @a[scores={CurrentRole=21}] CountOfBakery 10
#### Mason
scoreboard players set @a[scores={CurrentRole=24}] MasonPair 0
#### Seer/FakeSeer/Sage/Medium/Detective/Thief
scoreboard players set @a[scores={CurrentRole=25..35}] TurnPageNum 0
scoreboard players enable @a[scores={CurrentRole=25..35}] TurnPageRight
scoreboard players enable @a[scores={CurrentRole=25..35}] TurnPageLeft
scoreboard players enable @a[scores={CurrentRole=25..35}] RoleTrigger

## Set Variables for Game
execute as @a[scores={CurrentRole=1..4}] run scoreboard players add #MWL BLACK 1
execute as @a[scores={CurrentRole=10}] run scoreboard players add #MWL PURPLE 1
execute as @a[scores={CurrentRole=20..40}] run scoreboard players add #MWL WHITE 1
