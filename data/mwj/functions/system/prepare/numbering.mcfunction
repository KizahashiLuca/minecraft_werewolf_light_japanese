###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Number the Members

#### The players' number, that is equal to the GM's number,
####  is incremented by 1.
execute as @a if score @s NUM = Time ROLE run scoreboard players add @s NUM 1

#### The GM's number is incremented by 1.
scoreboard players add Time ROLE 1

#### One random player's number, that is equal to the GM's number,
####  is decremented by 1.
execute as @r[tag=!numbered] if score @s NUM = Time ROLE run scoreboard players remove @s NUM 1

#### If the players' number is NOT equal to the GM's number,
####  these players are put a tag of 'numbered'.
execute as @a unless score @s NUM = Time ROLE run tag @s add numbered
