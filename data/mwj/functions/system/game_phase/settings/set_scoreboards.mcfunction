####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set the Game Time
scoreboard players operation #MWL Tick = #MWL Num00000
scoreboard players operation #MWL Second = #MWL Num00060
scoreboard players operation #MWL Second *= #MWL GameTime
scoreboard players operation #MWL SetGameTime = #MWL Second
## Set Variables for Kill Log
scoreboard players set @a DeathCount 0
scoreboard players reset @a NumberOfKiller
scoreboard players reset @a NumberOfVictim
scoreboard players reset @a FlagOfVictim
scoreboard players reset @a FlagOfKiller
scoreboard players reset @a KillLogOfFox
scoreboard players reset @a KillLogOfCat
scoreboard players reset @a KillLogOfTrident
## Set Variables for randomizer
execute if predicate mwj:game_rule/dummyrole_exist run function mwj:system/game_phase/settings/random_generator/initialize
#### Number the Members
scoreboard players operation #MWL TurnPageMax = #MWL NumOfPlayers
scoreboard players remove #MWL TurnPageMax 1
scoreboard players operation #MWL TurnPageMax /= #MWL Num00010
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
#### Little Red
scoreboard players reset @a KilledByWolf
#### Cat
scoreboard players reset @a KilledByCat
#### Snowball
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
scoreboard players set @a[predicate=mwj:player/player] NumOfPlayers 1
## Set Variables for Mason Number
scoreboard players set #MWL MasonPair 1