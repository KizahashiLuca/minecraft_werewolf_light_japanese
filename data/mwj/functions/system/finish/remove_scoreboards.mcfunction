###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Remove Variables for Game
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove NumOfPlayers
scoreboard objectives remove NumOfRoles
scoreboard objectives remove PrevNumOfPlayers
scoreboard objectives remove CurrentRole
scoreboard objectives remove PrevRole
scoreboard objectives remove WINNER
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove PURPLE
## Remove Variables for Timer
scoreboard objectives remove Second
scoreboard objectives remove Tick
## Remove Variables for Number of Roles
scoreboard objectives remove NumOfBlack
scoreboard objectives remove NumOfWhite
scoreboard objectives remove NumOfWolves
scoreboard objectives remove NumOfMadmans
scoreboard objectives remove NumOfVillagers
scoreboard objectives remove NumOfSeers
scoreboard objectives remove NumOfMediums
scoreboard objectives remove NumOfFoxes
scoreboard objectives remove NumOfMasons
scoreboard objectives remove NumOfDetectives
scoreboard objectives remove NumOfThieves
scoreboard objectives remove NumOfCats
scoreboard objectives remove NumOfFkSeers
scoreboard objectives remove NumOfSages
scoreboard objectives remove NumOfWhWolves
scoreboard objectives remove NumOfFanatics
scoreboard objectives remove NumOfImmorals
scoreboard objectives remove NumOfLtReds
scoreboard objectives remove NumOfClWolves
scoreboard objectives remove NumOfBakeries
scoreboard objectives remove PNumOfWolves
scoreboard objectives remove PNumOfMadmans
scoreboard objectives remove PNumOfVillagers
scoreboard objectives remove PNumOfSeers
scoreboard objectives remove PNumOfMediums
scoreboard objectives remove PNumOfFoxes
scoreboard objectives remove PNumOfMasons
scoreboard objectives remove PNumOfDetectives
scoreboard objectives remove PNumOfThieves
scoreboard objectives remove PNumOfCats
scoreboard objectives remove PNumOfFkSeers
scoreboard objectives remove PNumOfSages
scoreboard objectives remove PNumOfWhWolves
scoreboard objectives remove PNumOfFanatics
scoreboard objectives remove PNumOfImmorals
scoreboard objectives remove PNumOfLtReds
scoreboard objectives remove PNumOfClWolves
scoreboard objectives remove PNumOfBakeries
## Remove Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives remove RoleOfNum
scoreboard objectives remove DropTorch
scoreboard objectives remove RemovedTorch
scoreboard objectives remove RoleDone
scoreboard objectives remove 10
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
scoreboard objectives remove 13
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
## Remove Variables for Role Addition
scoreboard objectives remove AddedRoleNumber
scoreboard objectives remove AddedRole
scoreboard objectives remove AddedWolf
scoreboard objectives remove AddedMadman
scoreboard objectives remove AddedVilla
scoreboard objectives remove AddedSeer
scoreboard objectives remove AddedMedium
scoreboard objectives remove AddedFox
scoreboard objectives remove AddedMason
scoreboard objectives remove AddedDetec
scoreboard objectives remove AddedThief
scoreboard objectives remove AddedCat
scoreboard objectives remove AddedFkSeer
scoreboard objectives remove AddedSage
scoreboard objectives remove AddedWhWolf
scoreboard objectives remove AddedFanatic
scoreboard objectives remove AddedImmoral
scoreboard objectives remove AddedLtRed
scoreboard objectives remove AddedClWolf
scoreboard objectives remove AddedBakery
scoreboard objectives remove PrevAddedRole
scoreboard objectives remove PrevAddedWolf
scoreboard objectives remove PrevAddedMadman
scoreboard objectives remove PrevAddedVilla
scoreboard objectives remove PrevAddedSeer
scoreboard objectives remove PrevAddedMedium
scoreboard objectives remove PrevAddedFox
scoreboard objectives remove PrevAddedMason
scoreboard objectives remove PrevAddedDetec
scoreboard objectives remove PrevAddedThief
scoreboard objectives remove PrevAddedCat
scoreboard objectives remove PrevAddedFkSeer
scoreboard objectives remove PrevAddedSage
scoreboard objectives remove PrevAddedWhWolf
scoreboard objectives remove PrevAddedFanatic
scoreboard objectives remove PrevAddedImmoral
scoreboard objectives remove PrevAddedLtRed
scoreboard objectives remove PrevAddedClWolf
scoreboard objectives remove PrevAddedBakery
scoreboard objectives remove AddedRole1
scoreboard objectives remove AddedRole2
scoreboard objectives remove AddedRole3
scoreboard objectives remove AddedRole4
scoreboard objectives remove AddedRole5
scoreboard objectives remove SelectNumber
## Remove Variables for Item Addition
scoreboard objectives remove AddedStick
scoreboard objectives remove AddedTotem
scoreboard objectives remove AddedDeath
scoreboard objectives remove AddedPearl
scoreboard objectives remove AddedHoe
scoreboard objectives remove AddedElytra
scoreboard objectives remove AddedSnowball
scoreboard objectives remove AddedInvis
scoreboard objectives remove AddedSpeed
scoreboard objectives remove AddedJump
scoreboard objectives remove AddedTrident
scoreboard objectives remove AddedConduit
scoreboard objectives remove AddedCrossbow
scoreboard objectives remove AddedHoneyBlock
scoreboard objectives remove AddedLantern
scoreboard objectives remove AddedVines
## Remove Variables for Setting Time
scoreboard objectives remove SettingTime
## Remove Variables for Setting Casting 
scoreboard objectives remove Casting
scoreboard objectives remove SetCasting
scoreboard objectives remove PrevSetCasting
## Remove Variables for Setting Dummy Role
scoreboard objectives remove DummyRole
scoreboard objectives remove SetDummyRole
scoreboard objectives remove PrevSetDummyRole
## Remove Variables for Hide Time
scoreboard objectives remove HideTime
scoreboard objectives remove PrevHideTime
scoreboard objectives remove ChangeHideTime
## Remove Variables for Glow Time
scoreboard objectives remove GlowTime
scoreboard objectives remove PrevGlowTime
scoreboard objectives remove ChangeGlowTime
## Remove Variables for Game Time
scoreboard objectives remove GameTime
scoreboard objectives remove PrevGameTime
scoreboard objectives remove SetGameTime
scoreboard objectives remove ChangeGameTime
## Remove Variables for Game Rules
scoreboard objectives remove GameMode
scoreboard objectives remove PrevGameMode
## Remove Variables for GUI Choose Mode
scoreboard objectives remove SelectCancel
scoreboard objectives remove SelectReset
scoreboard objectives remove SelectOkay
scoreboard objectives remove SelectDecide
scoreboard objectives remove ChosenCasting
scoreboard objectives remove ChosenDummyRole
scoreboard objectives remove ChosenHideTime
scoreboard objectives remove ChosenGlowTime
scoreboard objectives remove ChosenGameTime
scoreboard objectives remove ChosenGameMode
scoreboard objectives remove ChosenItemAdd
scoreboard objectives remove ChosenRoleAdd
scoreboard objectives remove ChosenCastSet
## Remove Variables for GUI Hide Time
scoreboard objectives remove Select015secs
scoreboard objectives remove Select030secs
scoreboard objectives remove Select060secs
scoreboard objectives remove Select090secs
scoreboard objectives remove Select120secs
scoreboard objectives remove Select180secs
scoreboard objectives remove Select300secs
## Remove Variables for GUI Glow Time
scoreboard objectives remove Select000pers
scoreboard objectives remove Select010pers
scoreboard objectives remove Select020pers
scoreboard objectives remove Select030pers
scoreboard objectives remove Select050pers
scoreboard objectives remove Select080pers
scoreboard objectives remove Select100pers
## Remove Variables for GUI Game Time
scoreboard objectives remove Select05mins
scoreboard objectives remove Select10mins
scoreboard objectives remove Select15mins
scoreboard objectives remove Select20mins
scoreboard objectives remove Select25mins
scoreboard objectives remove Select30mins
scoreboard objectives remove Select60mins
## Remove Variables for GUI Game Mode
scoreboard objectives remove SelectNormalWolf
scoreboard objectives remove SelectTwoAlive
scoreboard objectives remove SelectAnnihilate
## Remove Variables for GUI Item Addition
scoreboard objectives remove PrevAddedStick
scoreboard objectives remove PrevAddedTotem
scoreboard objectives remove PrevAddedDeath
scoreboard objectives remove PrevAddedPearl
scoreboard objectives remove PrevAddedHoe
scoreboard objectives remove PrevAddedElytra
scoreboard objectives remove PrevAddedSnowbal
scoreboard objectives remove PrevAddedInvis
scoreboard objectives remove PrevAddedSpeed
scoreboard objectives remove PrevAddedJump
scoreboard objectives remove PrevAddedTrident
scoreboard objectives remove PrevAddedConduit
scoreboard objectives remove PrevAddedCrossbo
scoreboard objectives remove PrevAddedHoneyBl
scoreboard objectives remove PrevAddedLantern
scoreboard objectives remove PrevAddedVines
scoreboard objectives remove AddedItem1
scoreboard objectives remove AddedItem2
scoreboard objectives remove AddedItem3
scoreboard objectives remove AddedItem4
scoreboard objectives remove AddedItem5
## Remove Variables for GUI Addition Common
scoreboard objectives remove TmpAdded
scoreboard objectives remove SelectAllDel
scoreboard objectives remove SelectAllSet
scoreboard objectives remove SelectPrevPage
scoreboard objectives remove SelectNextPage
scoreboard objectives remove SelectItem1
scoreboard objectives remove SelectItem2
scoreboard objectives remove SelectItem3
scoreboard objectives remove SelectItem4
scoreboard objectives remove SelectItem5
scoreboard objectives remove SelectDecide1
scoreboard objectives remove SelectDecide2
scoreboard objectives remove SelectDecide3
scoreboard objectives remove SelectDecide4
scoreboard objectives remove SelectDecide5
## Remove Variables for Throwing Item
scoreboard objectives remove ThrowItem
## Remove Variables for CurrentRole
scoreboard objectives remove TempVariable
## Remove Variables for Item
scoreboard objectives remove TENS_DIGIT
scoreboard objectives remove ONES_DIGIT
scoreboard objectives remove TEMP_DIGIT
## Remove Players
scoreboard players reset @a
scoreboard players reset #MWL