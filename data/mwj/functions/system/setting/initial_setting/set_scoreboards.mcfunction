####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## CurrentRole - breakdown
##   1 : Wolf 人狼
##   3 : Clever Wolf 賢狼
##   4 : White Wolf 白狼
##   5 : Madman 狂人
##   6 : Fanatic 狂信者
##   10 : Fox 羽衣狐
##   11 : Immoralist 背徳者
##   20 : Villager 村人
##   21 : Bakery パン屋
##   22 : Lycanthrope 狼憑き
##   24 : Mason 共有者
##   25 : Seer 予言者
##   26 : Fake Seer 偽予言者
##   27 : Sage 賢者
##   28 : Medium 霊媒師
##   31 : Detective 探偵
##   35 : Thief 怪盗
##   39 : Little Red 赤ずきん
##   40 : Cat 猫又

## Add Variables for Game
scoreboard objectives add Phase dummy
scoreboard objectives add NumOfRoles dummy
scoreboard objectives add NumOfRestRoles dummy
scoreboard objectives add PrevNumOfRoles dummy
scoreboard objectives add PNumOfRestRoles dummy
scoreboard objectives add TmpNumOfRoles dummy
## Add Variables for Timer
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
## Add Variables for Game
scoreboard objectives add CurrentRole dummy
scoreboard objectives add PrevRole dummy
scoreboard objectives add IsEndGame dummy
scoreboard objectives add WINNER dummy
scoreboard objectives add WHITE dummy
scoreboard objectives add BLACK dummy
scoreboard objectives add PURPLE dummy
## Add Variables for Role
scoreboard objectives add RoleOfNum dummy
## Add Variables for Role Number
scoreboard objectives add PlayerRole dummy
scoreboard objectives add NumOfBlack dummy
scoreboard objectives add NumOfWhite dummy
scoreboard objectives add NumOfWolves dummy
scoreboard objectives add NumOfClWolves dummy
scoreboard objectives add NumOfWhWolves dummy
scoreboard objectives add NumOfMadmans dummy
scoreboard objectives add NumOfFanatics dummy
scoreboard objectives add NumOfFoxes dummy
scoreboard objectives add NumOfImmorals dummy
scoreboard objectives add NumOfVillagers dummy
scoreboard objectives add NumOfBakeries dummy
scoreboard objectives add NumOfLycants dummy
scoreboard objectives add NumOfMasons dummy
scoreboard objectives add NumOfSeers dummy
scoreboard objectives add NumOfFkSeers dummy
scoreboard objectives add NumOfSages dummy
scoreboard objectives add NumOfMediums dummy
scoreboard objectives add NumOfDetectives dummy
scoreboard objectives add NumOfThieves dummy
scoreboard objectives add NumOfLtReds dummy
scoreboard objectives add NumOfCats dummy
scoreboard objectives add PNumOfWolves dummy
scoreboard objectives add PNumOfClWolves dummy
scoreboard objectives add PNumOfWhWolves dummy
scoreboard objectives add PNumOfMadmans dummy
scoreboard objectives add PNumOfFanatics dummy
scoreboard objectives add PNumOfFoxes dummy
scoreboard objectives add PNumOfImmorals dummy
scoreboard objectives add PNumOfVillagers dummy
scoreboard objectives add PNumOfBakeries dummy
scoreboard objectives add PNumOfLycants dummy
scoreboard objectives add PNumOfMasons dummy
scoreboard objectives add PNumOfSeers dummy
scoreboard objectives add PNumOfFkSeers dummy
scoreboard objectives add PNumOfSages dummy
scoreboard objectives add PNumOfMediums dummy
scoreboard objectives add PNumOfDetectives dummy
scoreboard objectives add PNumOfThieves dummy
scoreboard objectives add PNumOfLtReds dummy
scoreboard objectives add PNumOfCats dummy
## Add Variables for Setting Select Role
scoreboard objectives add SelectNumOfRest dummy
scoreboard objectives add SelectRolePos1 dummy
scoreboard objectives add SelectRolePos2 dummy
scoreboard objectives add SelectRolePos3 dummy
scoreboard objectives add SelectRolePos4 dummy
scoreboard objectives add SelectRolePos5 dummy
## Add Variables for Setting Dummy Role
scoreboard objectives add DummyRole dummy
## Add Variables for Setting Hide Time
scoreboard objectives add HideTime dummy
scoreboard objectives add PrevHideTime dummy
## Add Variables for Setting Glow Time
scoreboard objectives add GlowTime dummy
scoreboard objectives add PrevGlowTime dummy
## Add Variables for Setting Game Time
scoreboard objectives add GameTime dummy
scoreboard objectives add PrevGameTime dummy
scoreboard objectives add SetGameTime dummy
## Add Variables for Setting Game Mode
scoreboard objectives add GameMode dummy
scoreboard objectives add PrevGameMode dummy
## Add Variables for Setting Dummyrole Mode
scoreboard objectives add DummyRoleMode dummy
scoreboard objectives add PreDummyRoleMode dummy
## Add Variables for Setting 2ndRole Mode
scoreboard objectives add 2ndRoleMode dummy
scoreboard objectives add Prev2ndRoleMode dummy
## Add Variables for GUI - Time
scoreboard objectives add 100 dummy
scoreboard objectives add 010 dummy
scoreboard objectives add 001 dummy
scoreboard objectives add Digit100 dummy
scoreboard objectives add Digit010 dummy
scoreboard objectives add Digit001 dummy
## Add Variables for Setting Item
scoreboard objectives add ChooseStick dummy
scoreboard objectives add ChooseTotem dummy
scoreboard objectives add ChooseDeathPot dummy
scoreboard objectives add ChoosePearl dummy
scoreboard objectives add ChooseHoe dummy
scoreboard objectives add ChooseElytra dummy
scoreboard objectives add ChooseSnowball dummy
scoreboard objectives add ChooseInvisPot dummy
scoreboard objectives add ChooseSpeedPot dummy
scoreboard objectives add ChooseJumpPot dummy
scoreboard objectives add ChooseTrident dummy
scoreboard objectives add ChooseConduit dummy
scoreboard objectives add ChooseCrossbow dummy
scoreboard objectives add ChooseHoneyBlock dummy
scoreboard objectives add ChooseLantern dummy
scoreboard objectives add ChooseVines dummy
scoreboard objectives add ChooseSpyglass dummy
scoreboard objectives add PChooseStick dummy
scoreboard objectives add PChooseTotem dummy
scoreboard objectives add PChooseDeathPot dummy
scoreboard objectives add PChoosePearl dummy
scoreboard objectives add PChooseHoe dummy
scoreboard objectives add PChooseElytra dummy
scoreboard objectives add PChooseSnowbal dummy
scoreboard objectives add PChooseInvisPot dummy
scoreboard objectives add PChooseSpeedPot dummy
scoreboard objectives add PChooseJumpPot dummy
scoreboard objectives add PChooseTrident dummy
scoreboard objectives add PChooseConduit dummy
scoreboard objectives add PChooseCrossbow dummy
scoreboard objectives add PChooseHoneyBloc dummy
scoreboard objectives add PChooseLantern dummy
scoreboard objectives add PChooseVines dummy
scoreboard objectives add PChooseSpyglass dummy
scoreboard objectives add SelectItemPos1 dummy
scoreboard objectives add SelectItemPos2 dummy
scoreboard objectives add SelectItemPos3 dummy
scoreboard objectives add SelectItemPos4 dummy
scoreboard objectives add SelectItemPos5 dummy
## Add Temporary Variable
scoreboard objectives add TempVariable dummy
## Add Variables for Item
scoreboard objectives add TENS_DIGIT dummy
scoreboard objectives add ONES_DIGIT dummy
scoreboard objectives add TEMP_DIGIT dummy
## Add Variables for Bossbar
scoreboard objectives add BossbarMax dummy
scoreboard objectives add BossbarVal dummy
## Add Variables for Roles
#### Seer/Medium/Detective
scoreboard objectives add DropTorch minecraft.dropped:minecraft.redstone_torch
scoreboard objectives add RemovedTorch dummy
scoreboard objectives add RoleDone dummy
scoreboard objectives add PageNumer dummy
scoreboard objectives add PageDenom dummy
scoreboard objectives add TurnPageNum dummy
scoreboard objectives add TurnPageMax dummy
scoreboard objectives add TargetOfRole dummy
scoreboard objectives add TurnPageRight trigger
scoreboard objectives add TurnPageLeft trigger
scoreboard objectives add RoleTrigger trigger
#### Fox
scoreboard objectives add KilledBySeer dummy
scoreboard objectives add FoxSpawnSecond dummy
scoreboard objectives add FoxSpawnTick dummy
scoreboard objectives add RespawnTime minecraft.custom:minecraft.time_since_death
#### Mason
scoreboard objectives add MasonPair dummy
scoreboard objectives add NumOfMasonPair dummy
#### Thief
scoreboard objectives add RoleStolen dummy
scoreboard objectives add NumberOfStolen dummy
scoreboard objectives add FlagOfThiefLog dummy
scoreboard objectives add TargetOfStolen dummy
scoreboard objectives add ThiefStealSecond dummy
scoreboard objectives add ThiefStealTick dummy
#### Little Red
scoreboard objectives add KilledByWolf dummy
#### Cat
scoreboard objectives add KilledByCat dummy
#### Bakery
scoreboard objectives add CountOfBakery dummy
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
## Add Variables for randomizer
scoreboard objectives add DummyRoleNumber dummy
scoreboard objectives add DummyRoleFlag dummy
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
#### Snowball
scoreboard objectives add NumberOfSnowball dummy
#### Trident
scoreboard objectives add ThrowTrident minecraft.used:minecraft.trident
scoreboard objectives add KilledByTrident dummy
#### Mines
scoreboard objectives add DropConduit minecraft.dropped:minecraft.conduit
#### Honey block
scoreboard objectives add HoneyBottleCount dummy
scoreboard objectives add DropHoneyBlock minecraft.dropped:minecraft.honey_block
#### Soul lantern
scoreboard objectives add TeleporterTemp dummy
scoreboard objectives add TeleporterPosX dummy
scoreboard objectives add TeleporterPosY dummy
scoreboard objectives add TeleporterPosZ dummy
scoreboard objectives add DropSoulLantern minecraft.dropped:minecraft.soul_lantern
scoreboard objectives add DropLantern minecraft.dropped:minecraft.lantern
#### Twisting Vines
scoreboard objectives add TwistVinesCount dummy
scoreboard objectives add DropTwistVines minecraft.dropped:minecraft.twisting_vines

## Set Variables for Timer
scoreboard players operation #MWL NumOfRoles = #MWL NumOfPlayers
scoreboard players set #MWL NumOfRestRoles 0
scoreboard players set #MWL PNumOfRestRoles 0
## Set Variables for Game
scoreboard players set @a CurrentRole 0
## Set Variables for CurrentRole
scoreboard players set #MWL NumOfWolves 0
scoreboard players set #MWL NumOfClWolves 0
scoreboard players set #MWL NumOfWhWolves 0
scoreboard players set #MWL NumOfMadmans 0
scoreboard players set #MWL NumOfFanatics 0
scoreboard players set #MWL NumOfFoxes 0
scoreboard players set #MWL NumOfImmorals 0
scoreboard players set #MWL NumOfVillagers 0
scoreboard players set #MWL NumOfBakeries 0
scoreboard players set #MWL NumOfLycants 0
scoreboard players set #MWL NumOfMasons 0
scoreboard players set #MWL NumOfSeers 0
scoreboard players set #MWL NumOfFkSeers 0
scoreboard players set #MWL NumOfSages 0
scoreboard players set #MWL NumOfMediums 0
scoreboard players set #MWL NumOfDetectives 0
scoreboard players set #MWL NumOfThieves 0
scoreboard players set #MWL NumOfLtReds 0
scoreboard players set #MWL NumOfCats 0
## Set Variables for Setting Dummy Role
scoreboard players set #MWL DummyRole 0
## Add Variables for GUI - Time
scoreboard players set #MWL 100 100
scoreboard players set #MWL 010 10
scoreboard players set #MWL 001 1
## Set Variables for Setting Hide Time
scoreboard players set #MWL HideTime 60
scoreboard players set #MWL PrevHideTime 60
## Set Variables for Setting Glow Time
scoreboard players set #MWL GlowTime 30
scoreboard players set #MWL PrevGlowTime 30
## Set Variables for Setting Game Time
scoreboard players set #MWL GameTime 20
scoreboard players set #MWL PrevGameTime 20
## Set Variables for Setting Game Mode
scoreboard players set #MWL GameMode 3
scoreboard players set #MWL PrevGameMode 3
## Set Variables for Setting Dummyrole Mode
scoreboard players set #MWL DummyRoleMode 0
scoreboard players set #MWL PreDummyRoleMode 0
## Set Variables for Setting 2ndRole Mode
scoreboard players set #MWL 2ndRoleMode 0
scoreboard players set #MWL Prev2ndRoleMode 0
## Add Variables for Setting Item
scoreboard players set #MWL ChooseStick 1
scoreboard players set #MWL ChooseTotem 1
scoreboard players set #MWL ChooseDeathPot 1
scoreboard players set #MWL ChoosePearl 1
scoreboard players set #MWL ChooseHoe 1
scoreboard players set #MWL ChooseElytra 1
scoreboard players set #MWL ChooseSnowball 1
scoreboard players set #MWL ChooseInvisPot 1
scoreboard players set #MWL ChooseSpeedPot 1
scoreboard players set #MWL ChooseJumpPot 1
scoreboard players set #MWL ChooseTrident 1
scoreboard players set #MWL ChooseConduit 1
scoreboard players set #MWL ChooseCrossbow 1
scoreboard players set #MWL ChooseHoneyBlock 1
scoreboard players set #MWL ChooseLantern 1
scoreboard players set #MWL ChooseVines 1
scoreboard players set #MWL ChooseSpyglass 1
scoreboard players set #MWL PChooseStick 1
scoreboard players set #MWL PChooseTotem 1
scoreboard players set #MWL PChooseDeathPot 1
scoreboard players set #MWL PChoosePearl 1
scoreboard players set #MWL PChooseHoe 1
scoreboard players set #MWL PChooseElytra 1
scoreboard players set #MWL PChooseSnowbal 1
scoreboard players set #MWL PChooseInvisPot 1
scoreboard players set #MWL PChooseSpeedPot 1
scoreboard players set #MWL PChooseJumpPot 1
scoreboard players set #MWL PChooseTrident 1
scoreboard players set #MWL PChooseConduit 1
scoreboard players set #MWL PChooseCrossbow 1
scoreboard players set #MWL PChooseHoneyBloc 1
scoreboard players set #MWL PChooseLantern 1
scoreboard players set #MWL PChooseVines 1
scoreboard players set #MWL PChooseSpyglass 1
## Set Temporary Variable
scoreboard players set #MWL TempVariable 0
## Set Variables for Roles
#### Mason
scoreboard players set #MWL NumOfMasonPair 0

## Set bossbar
scoreboard players set #MWL Tick 0
scoreboard players set #MWL Second 0
bossbar add minecraft:bossbar ["",{"text":"初期設定時間"}]
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name ["",{"text":"初期設定時間"}]
scoreboard players set #MWL BossbarMax 20
scoreboard players set #MWL BossbarVal 20
execute store result bossbar minecraft:bossbar max run scoreboard players get #MWL BossbarMax
execute store result bossbar minecraft:bossbar value run scoreboard players get #MWL BossbarVal