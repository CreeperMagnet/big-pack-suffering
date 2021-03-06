############################################################
# Moves the boomerang one block
############################################################

tp @s ^ ^ ^0.05
execute unless block ~ ~ ~ #tcc:boomerang_ignore run data modify entity @s Glowing set value 1b
execute if block ~ ~ ~ #tcc:boomerang_ignore run data modify entity @s Glowing set value 0b
scoreboard players add @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=0..19}] at @s run function tcc:item/boomerang/iterate_spectral
execute if entity @s[scores={tcc.dummy2=3..}] if entity @a[distance=..2,gamemode=!spectator] run function tcc:item/boomerang/pickup_attempt
execute if entity @s[scores={tcc.dummy2=1..}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#tcc:boomerang_ignore,dx=0,dz=0,dy=0,distance=..5,predicate=tcc:entity/global.ignore,tag=!tcc.snail,tag=!tcc.gobblerift] run effect give @s glowing 10 0 false
