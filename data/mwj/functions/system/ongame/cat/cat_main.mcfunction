###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Send a Message to a StrayBullet Player
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run tellraw @p[tag=StrayBullet] ["",{"text":"\n----------------------------------","color":"white"}]
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run tellraw @p[tag=StrayBullet,scores={DeathCount=0}] ["",{"selector":"@p[tag=StrayBullet,scores={DeathCount=0}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされましたが、突然死しませんでした。"}]
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run tellraw @p[tag=StrayBullet,scores={DeathCount=1}] ["",{"selector":"@p[tag=StrayBullet,scores={DeathCount=1}]"},{"text":" は "},{"selector":"@s"},{"text":" に道連れされて、突然死しました。"}]
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run tellraw @p[tag=StrayBullet] ["",{"text":"----------------------------------\n","color":"white"}]

## Kill log
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run scoreboard players set @p[tag=StrayBullet,scores={DeathCount=1}] KillLogOfCat 1

## Remove Tags
execute if score @s[scores={DeathCount=2}] NUM = @p[tag=StrayBullet] KilledByCat run tag @p[tag=StrayBullet] remove StrayBullet

## Select Random StrayBullet
execute as @s[scores={DeathCount=1}] run function mwj:system/ongame/cat/cat_random_tag