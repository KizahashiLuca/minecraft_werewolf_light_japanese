####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
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

## Game settings
scoreboard players set #MWL DataVersion 1444
scoreboard players set #MWL Version 13
scoreboard players set #MWL Phase 80
scoreboard players set #MWL NumOfPlayers 0
scoreboard players set #MWL NumOfRoles 0
scoreboard players set #MWL NumOfRestRoles 0
scoreboard players set #MWL PrevNumOfRoles 0
scoreboard players set #MWL PNumOfRestRoles 0
scoreboard players set #MWL TmpNumOfRoles 0
## Game
scoreboard players set #MWL CurrentRole 1
scoreboard players set @a CurrentRole 0
scoreboard players set @a PrevRole 0
scoreboard players set #MWL IsEndGame 0
scoreboard players set #MWL WINNER 0
scoreboard players set #MWL WHITE 0
scoreboard players set #MWL BLACK 0
scoreboard players set #MWL PURPLE 0
## Timer
scoreboard players set #MWL Second 0
scoreboard players set #MWL Tick 0