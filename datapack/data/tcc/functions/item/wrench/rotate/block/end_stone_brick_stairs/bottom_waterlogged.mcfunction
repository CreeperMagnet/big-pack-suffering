############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_stone_brick_stairs[facing=north] run setblock ~ ~ ~ end_stone_brick_stairs[facing=east,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_stone_brick_stairs[facing=east] run setblock ~ ~ ~ end_stone_brick_stairs[facing=south,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_stone_brick_stairs[facing=south] run setblock ~ ~ ~ end_stone_brick_stairs[facing=west,waterlogged=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ end_stone_brick_stairs[facing=west] run setblock ~ ~ ~ end_stone_brick_stairs[facing=north,waterlogged=true]
