###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Add Variables for Game
scoreboard objectives add PrevRole dummy
scoreboard objectives add WINNER dummy
scoreboard objectives add WHITE dummy
scoreboard objectives add BLACK dummy
scoreboard objectives add PURPLE dummy
## Add Variables for Role
scoreboard objectives add RoleOfNum dummy
## Add Variables for Kill Log
scoreboard objectives add DeathCount deathCount
scoreboard objectives add NumberOfKiller dummy
scoreboard objectives add NumberOfVictim dummy
scoreboard objectives add CountOfKiller dummy
scoreboard objectives add CountOfVictim dummy
scoreboard objectives add FlagOfVictim dummy
scoreboard objectives add FlagOfKiller dummy
scoreboard objectives add NumberOfKillLog dummy
scoreboard objectives add KillLogOfFox dummy
scoreboard objectives add KillLogOfCat dummy
scoreboard objectives add KillLogOfTrident dummy
## Add Variables for Mason Number
scoreboard objectives add MasonPair dummy
## Add Variables for Item
scoreboard objectives add TENS_DIGIT dummy
scoreboard objectives add ONES_DIGIT dummy
scoreboard objectives add TEMP_DIGIT dummy
## Add Variables for randomizer
scoreboard objectives add 11 dummy
scoreboard objectives add DummyRoleFlag dummy
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy

## CurrentRole - breakdown
##   1 : Wolf 人狼
##   4 : White Wolf 白狼
##   5 : Madman 狂人
##   6 : Fanatic 狂信者
##   10 : Fox 羽衣狐
##   11 : Immoralist 背徳者
##   20 : Villager 村人
##   21 : Mason 共有者
##   25 : Seer 予言者
##   26 : Fake Seer 偽予言者
##   27 : Sage 賢者
##   28 : Medium 霊媒師
##   31 : Detective 探偵
##   35 : Thief 怪盗
##   40 : Cat 猫又

## Set Variables for Game
scoreboard players set @a CurrentRole 0
scoreboard players set @a[team=Player] NumOfPlayers 1
scoreboard players set #MWL CurrentRole 1
scoreboard players set #MWL NumOfPlayers 0
scoreboard players set #MWL WINNER 0
scoreboard players set #MWL WHITE 0
scoreboard players set #MWL BLACK 0
scoreboard players set #MWL PURPLE 0
## Set Variables for Timer of Kill Log
scoreboard players reset @a Second
scoreboard players reset @a Tick
## Set Variables for Seer/Medium/Detective/Cat
scoreboard players reset @a RoleOfNum
scoreboard players set #MWL RoleOfNum 0 
## Set Variables for Kill Log
scoreboard players set @a DeathCount 0
scoreboard players reset @a NumberOfKiller
scoreboard players reset @a NumberOfVictim
scoreboard players reset @a FlagOfVictim
scoreboard players reset @a FlagOfKiller
scoreboard players reset @a KillLogOfFox
scoreboard players reset @a KillLogOfCat
scoreboard players reset @a KillLogOfTrident
scoreboard players set #MWL CountOfKiller 0
scoreboard players set #MWL CountOfVictim 0
scoreboard players set #MWL NumberOfKillLog 1
## Set Variables for Mason Number
scoreboard players set @a MasonPair 0
scoreboard players set #MWL MasonPair 1
## Set Variables for randomizer
scoreboard players set #MWL 11 11
scoreboard players set #MWL DummyRoleFlag 0
scoreboard players set #MWL RandomSeed 0
scoreboard players set #MWL RandomCount 10
scoreboard players set #MWL RandomAnswer 0
scoreboard players set #MWL RandomModder 2147483647
scoreboard players set #MWL RandomMultiplier 48271
execute if score #MWL SetDummyRole matches 1 run function mwj:system/preparation/random_generator/initialize

## RE-Count Players
execute as @a[team=Player] run scoreboard players add #MWL NumOfPlayers 1
## Test
execute if entity @p[tag=MWLtest] run scoreboard players set #MWL NumOfPlayers 15

## Set dummy role
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
execute if score #MWL SetDummyRole matches 1 run scoreboard players add #MWL NumOfRoles 1