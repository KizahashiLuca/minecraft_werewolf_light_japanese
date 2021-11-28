####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set the Game Time
scoreboard players set #MWL Tick 0
scoreboard players set #MWL Second 60
scoreboard players operation #MWL Second *= #MWL GameTime
scoreboard players operation #MWL SetGameTime = #MWL Second
## Set Variables for Timer of Kill Log
scoreboard players reset @a Tick
scoreboard players reset @a Second
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
## Set Variables for randomizer
scoreboard players set #MWL DummyRoleNumber 14
scoreboard players set #MWL DummyRoleFlag 0
scoreboard players set #MWL RandomSeed 0
scoreboard players set #MWL RandomCount 10
scoreboard players set #MWL RandomAnswer 0
scoreboard players set #MWL RandomModder 2147483647
scoreboard players set #MWL RandomMultiplier 48271
execute if score #MWL DummyRoleMode matches 1 run function mwj:system/game_phase/settings/random_generator/initialize
## Set Variables for Setting 2nd Role
scoreboard players set @a 2ndRoleDone 0
#### Set Variables for Redstone Torch
scoreboard players reset @a DropTorch
scoreboard players reset @a RemovedTorch
scoreboard players set @a RoleDone 0
#### Seer/Medium/Detective
scoreboard players reset @a PageNumer
scoreboard players reset @a PageDenom
scoreboard players reset @a TurnPageNum
scoreboard players reset @a TargetOfRole
scoreboard players reset @a TurnPageRight
scoreboard players reset @a TurnPageLeft
scoreboard players reset @a RoleTrigger
#### Number the Members
scoreboard players operation #MWL TurnPageMax = #MWL NumOfPlayers
scoreboard players remove #MWL TurnPageMax 1
scoreboard players operation #MWL TurnPageMax /= #MWL 010
#### Fox
scoreboard players reset @a FoxSpawnSecond
scoreboard players reset @a FoxSpawnTick
scoreboard players reset @a KilledBySeer
#### Thief
scoreboard players reset @a RoleStolen
scoreboard players reset @a ThiefStealSecond
scoreboard players reset @a ThiefStealTick
scoreboard players reset @a NumberOfStolen
scoreboard players reset @a TargetOfStolen
scoreboard players reset @a FlagOfThiefLog
scoreboard players set #MWL NumberOfStolen 1
#### Little Red
scoreboard players reset @a KilledByWolf
#### Cat
scoreboard players reset @a KilledByCat
#### Snowball
scoreboard players set #MWL NumberOfSnowball 0
#### Trident
scoreboard players reset @a ThrowTrident
scoreboard players reset @a KilledByTrident
#### Mines
scoreboard players reset @a DropConduit
#### Honey block
scoreboard players reset @a HoneyBottleCount
scoreboard players reset @a DropHoneyBlock
#### Soul lantern
scoreboard players reset @a TeleporterTemp
scoreboard players reset @a TeleporterPosX
scoreboard players reset @a TeleporterPosY
scoreboard players reset @a TeleporterPosZ
scoreboard players reset @a DropSoulLantern
scoreboard players reset @a DropLantern
#### Twisting Vines
scoreboard players reset @a TwistVinesCount
scoreboard players reset @a DropTwistVines

## Set Variables for Game
scoreboard players set @a CurrentRole 0
scoreboard players set @a[team=Player] NumOfPlayers 1
scoreboard players set #MWL CurrentRole 1
scoreboard players set #MWL IsEndGame 0
scoreboard players set #MWL WINNER 0
scoreboard players set #MWL WHITE 0
scoreboard players set #MWL BLACK 0
scoreboard players set #MWL PURPLE 0
## Set Variables for Mason Number
scoreboard players set #MWL MasonPair 1