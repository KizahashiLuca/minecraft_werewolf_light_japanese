####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Remove Variables for Game
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove NumOfPlayers
scoreboard objectives remove NumOfRoles
scoreboard objectives remove NumOfRestRoles
scoreboard objectives remove PrevNumOfRoles
scoreboard objectives remove PNumOfRestRoles
scoreboard objectives remove TmpNumOfRoles
scoreboard objectives remove CurrentRole
scoreboard objectives remove PrevRole
scoreboard objectives remove IsEndGame
scoreboard objectives remove WINNER
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove PURPLE
## Remove Variables for Timer
scoreboard objectives remove Second
scoreboard objectives remove Tick
## Remove Variables for Number of Roles
scoreboard objectives remove PlayerRole
scoreboard objectives remove NumOfBlack
scoreboard objectives remove NumOfWhite
scoreboard objectives remove NumOfWolves
scoreboard objectives remove NumOfClWolves
scoreboard objectives remove NumOfWhWolves
scoreboard objectives remove NumOfMadmans
scoreboard objectives remove NumOfFanatics
scoreboard objectives remove NumOfFoxes
scoreboard objectives remove NumOfImmorals
scoreboard objectives remove NumOfVillagers
scoreboard objectives remove NumOfBakeries
scoreboard objectives remove NumOfLycants
scoreboard objectives remove NumOfMasons
scoreboard objectives remove NumOfSeers
scoreboard objectives remove NumOfFkSeers
scoreboard objectives remove NumOfSages
scoreboard objectives remove NumOfMediums
scoreboard objectives remove NumOfDetectives
scoreboard objectives remove NumOfThieves
scoreboard objectives remove NumOfLtReds
scoreboard objectives remove NumOfCats
## Remove Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives remove RoleOfNum
scoreboard objectives remove DropTorch
scoreboard objectives remove RemovedTorch
scoreboard objectives remove RoleDone
scoreboard objectives remove PageNumer
scoreboard objectives remove PageDenom
scoreboard objectives remove TurnPageNum
scoreboard objectives remove TurnPageMax
scoreboard objectives remove TargetOfRole
scoreboard objectives remove TurnPageRight
scoreboard objectives remove TurnPageLeft
scoreboard objectives remove RoleTrigger
#### Fox
scoreboard objectives remove KilledBySeer
scoreboard objectives remove FoxSpawnSecond
scoreboard objectives remove FoxSpawnTick
scoreboard objectives remove RespawnTime
#### Mason
scoreboard objectives remove NumOfMasonPair
scoreboard objectives remove MasonPair
#### Thief
scoreboard objectives remove RoleStolen
scoreboard objectives remove NumberOfStolen
scoreboard objectives remove TargetOfStolen
scoreboard objectives remove FlagOfThiefLog
scoreboard objectives remove ThiefStealSecond
scoreboard objectives remove ThiefStealTick
#### Little Red
scoreboard objectives remove KilledByWolf
#### Cat
scoreboard objectives remove KilledByCat
#### Bakery
scoreboard objectives remove CountOfBakery
## Remove Variables for randomizer
scoreboard objectives remove DummyRoleNumber
scoreboard objectives remove DummyRoleFlag
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
## Remove Variables for Items
scoreboard objectives remove SneakTime
#### Snowball
scoreboard objectives remove NumberOfSnowball
#### Trident
scoreboard objectives remove ThrowTrident
scoreboard objectives remove KilledByTrident
#### Mines
scoreboard objectives remove DropConduit
#### Honey block
scoreboard objectives remove HoneyBottleCount
scoreboard objectives remove DropHoneyBlock
#### Soul lantern
scoreboard objectives remove TeleporterTemp
scoreboard objectives remove TeleporterPosX
scoreboard objectives remove TeleporterPosY
scoreboard objectives remove TeleporterPosZ
scoreboard objectives remove DropSoulLantern
scoreboard objectives remove DropLantern
#### Twisting Vines
scoreboard objectives remove TwistVinesCount
scoreboard objectives remove DropTwistVines

## Remove Variables for Kill Log
scoreboard objectives remove DeathCount
scoreboard objectives remove NumberOfKiller
scoreboard objectives remove NumberOfVictim
scoreboard objectives remove CountOfKiller
scoreboard objectives remove CountOfVictim
scoreboard objectives remove FlagOfVictim
scoreboard objectives remove FlagOfKiller
scoreboard objectives remove NumberOfKillLog
scoreboard objectives remove KillLogOfFox
scoreboard objectives remove KillLogOfCat
scoreboard objectives remove KillLogOfTrident
## Remove Variables for Setting Dummy Role
scoreboard objectives remove DummyRole
## Remove Variables for GUI - Time
scoreboard objectives remove 010
## Remove Variables for Hide Time
scoreboard objectives remove HideTime
## Remove Variables for Glow Time
scoreboard objectives remove GlowTime
## Remove Variables for Game Time
scoreboard objectives remove GameTime
scoreboard objectives remove SetGameTime
## Remove Variables for Game Mode
scoreboard objectives remove GameMode
## Remove Variables for Dummyrole Mode
scoreboard objectives remove DummyRoleMode
## Remove Variables for 2ndRole Mode
scoreboard objectives remove 2ndRoleMode
## Remove Variables for Setting Item
scoreboard objectives remove ChooseStick
scoreboard objectives remove ChooseTotem
scoreboard objectives remove ChooseDeathPot
scoreboard objectives remove ChoosePearl
scoreboard objectives remove ChooseHoe
scoreboard objectives remove ChooseElytra
scoreboard objectives remove ChooseSnowball
scoreboard objectives remove ChooseInvisPot
scoreboard objectives remove ChooseSpeedPot
scoreboard objectives remove ChooseJumpPot
scoreboard objectives remove ChooseTrident
scoreboard objectives remove ChooseConduit
scoreboard objectives remove ChooseCrossbow
scoreboard objectives remove ChooseHoneyBlock
scoreboard objectives remove ChooseLantern
scoreboard objectives remove ChooseVines
scoreboard objectives remove ChooseSpyglass
## Remove Variables for CurrentRole
scoreboard objectives remove TempVariable
## Remove Variables for Item
scoreboard objectives remove TENS_DIGIT
scoreboard objectives remove ONES_DIGIT
scoreboard objectives remove TEMP_DIGIT
## Remove Variables for Bossbar
scoreboard objectives remove BossbarMax
scoreboard objectives remove BossbarVal

## Reset Players
scoreboard players reset @a
scoreboard players reset #MWL