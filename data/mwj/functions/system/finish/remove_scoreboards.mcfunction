####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Game settings
scoreboard objectives remove DataVersion
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove NumOfPlayers
scoreboard objectives remove NumOfRoles
scoreboard objectives remove NumOfRestRoles
scoreboard objectives remove PrevNumOfRoles
scoreboard objectives remove PNumOfRestRoles
scoreboard objectives remove TmpNumOfRoles
## Game
scoreboard objectives remove CurrentRole
scoreboard objectives remove PrevRole
scoreboard objectives remove IsEndGame
scoreboard objectives remove WINNER
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove PURPLE
## Timer
scoreboard objectives remove Second
scoreboard objectives remove Tick

## Setting phase
## Choose role
scoreboard objectives remove SelectNumOfRest
scoreboard objectives remove SelectRolePos1
scoreboard objectives remove SelectRolePos2
scoreboard objectives remove SelectRolePos3
scoreboard objectives remove SelectRolePos4
scoreboard objectives remove SelectRolePos5
## Choose item
scoreboard objectives remove SelectItemPos1
scoreboard objectives remove SelectItemPos2
scoreboard objectives remove SelectItemPos3
scoreboard objectives remove SelectItemPos4
scoreboard objectives remove SelectItemPos5
## Choose hide time
scoreboard objectives remove HideTime
scoreboard objectives remove PrevHideTime
## Choose glow time
scoreboard objectives remove GlowTime
scoreboard objectives remove PrevGlowTime
## Choose game time
scoreboard objectives remove GameTime
scoreboard objectives remove PrevGameTime
scoreboard objectives remove SetGameTime
## Choose game mode
scoreboard objectives remove GameMode
scoreboard objectives remove PrevGameMode
## Choose dummyrole mode
scoreboard objectives remove DummyRoleMode
scoreboard objectives remove PreDummyRoleMode
scoreboard objectives remove SetDummyRole
## Choose secondrole mode
scoreboard objectives remove 2ndRoleMode
scoreboard objectives remove Prev2ndRoleMode
scoreboard objectives remove Set2ndRole
## Choose distribute scrap mode
scoreboard objectives remove DstrScrapMode
scoreboard objectives remove PreDstrScrapMode
scoreboard objectives remove DstrScrapTime
scoreboard objectives remove PrevDstrScrapTime
## Common number gui
scoreboard objectives remove Num10000
scoreboard objectives remove Num01000
scoreboard objectives remove Num00100
scoreboard objectives remove Num00060
scoreboard objectives remove Num00010
scoreboard objectives remove Num00006
scoreboard objectives remove Num00005
scoreboard objectives remove Num00002
scoreboard objectives remove Num00001
scoreboard objectives remove Num00000
scoreboard objectives remove Digit100
scoreboard objectives remove Digit010
scoreboard objectives remove Digit001
## Number of roles
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
## Prev number of roles
scoreboard objectives remove PNumOfWolves
scoreboard objectives remove PNumOfClWolves
scoreboard objectives remove PNumOfWhWolves
scoreboard objectives remove PNumOfMadmans
scoreboard objectives remove PNumOfFanatics
scoreboard objectives remove PNumOfFoxes
scoreboard objectives remove PNumOfImmorals
scoreboard objectives remove PNumOfVillagers
scoreboard objectives remove PNumOfBakeries
scoreboard objectives remove PNumOfLycants
scoreboard objectives remove PNumOfMasons
scoreboard objectives remove PNumOfSeers
scoreboard objectives remove PNumOfFkSeers
scoreboard objectives remove PNumOfSages
scoreboard objectives remove PNumOfMediums
scoreboard objectives remove PNumOfDetectives
scoreboard objectives remove PNumOfThieves
scoreboard objectives remove PNumOfLtReds
scoreboard objectives remove PNumOfCats
## Number of items
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
## Prev number of items
scoreboard objectives remove PChooseStick
scoreboard objectives remove PChooseTotem
scoreboard objectives remove PChooseDeathPot
scoreboard objectives remove PChoosePearl
scoreboard objectives remove PChooseHoe
scoreboard objectives remove PChooseElytra
scoreboard objectives remove PChooseSnowbal
scoreboard objectives remove PChooseInvisPot
scoreboard objectives remove PChooseSpeedPot
scoreboard objectives remove PChooseJumpPot
scoreboard objectives remove PChooseTrident
scoreboard objectives remove PChooseConduit
scoreboard objectives remove PChooseCrossbow
scoreboard objectives remove PChooseHoneyBloc
scoreboard objectives remove PChooseLantern
scoreboard objectives remove PChooseVines
scoreboard objectives remove PChooseSpyglass

## Setting game phase
## giving items
scoreboard objectives remove KindOfItems
scoreboard objectives remove KindsTensDigit
scoreboard objectives remove KindsOnesDigit
scoreboard objectives remove KindsTempDigit
## Bossbar
scoreboard objectives remove BossbarMax
scoreboard objectives remove BossbarVal
## Dummy role randomizer
scoreboard objectives remove DummyRoleNumber
scoreboard objectives remove DummyRoleFlag
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier

## Game phase - Rolls
## Common
scoreboard objectives remove TagOfRoleWork
## Common of augury
scoreboard objectives remove DropTorch
scoreboard objectives remove CraftTorch
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
## Bakery
scoreboard objectives remove CountOfBakery
## Fox
scoreboard objectives remove KilledBySeer
scoreboard objectives remove FoxSpawnSecond
scoreboard objectives remove FoxSpawnTick
scoreboard objectives remove RespawnTime
## Mason
scoreboard objectives remove NumOfMasonPair
scoreboard objectives remove MasonPair
## Thief
scoreboard objectives remove RoleStolen
scoreboard objectives remove NumberOfStolen
scoreboard objectives remove TargetOfStolen
scoreboard objectives remove FlagOfThiefLog
scoreboard objectives remove ThiefStealSecond
scoreboard objectives remove ThiefStealTick
## Little Red
scoreboard objectives remove KilledByWolf
## Cat
scoreboard objectives remove KilledByCat
## 2nd Role
scoreboard objectives remove 2ndRoleDone
scoreboard objectives remove 2ndRoleGiven
scoreboard objectives remove 2ndRoleDrunk

## Game phase - Items
## Snowball
scoreboard objectives remove NumberOfSnowball
## Trident
scoreboard objectives remove ThrowTrident
scoreboard objectives remove KilledByTrident
## Mines
scoreboard objectives remove DropConduit
## Honey block
scoreboard objectives remove HoneyBottleCount
scoreboard objectives remove DropHoneyBlock
## Soul lantern
scoreboard objectives remove TeleporterTemp
scoreboard objectives remove TeleporterPosX
scoreboard objectives remove TeleporterPosY
scoreboard objectives remove TeleporterPosZ
scoreboard objectives remove DropSoulLantern
scoreboard objectives remove DropLantern
## Twisting vines
scoreboard objectives remove TwistVinesCount
scoreboard objectives remove DropTwistVines

## Game phase
## Kill log
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

## Reset Players
scoreboard players reset @a
scoreboard players reset #MWL