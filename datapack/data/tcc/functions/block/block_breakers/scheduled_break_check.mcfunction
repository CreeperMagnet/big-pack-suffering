############################################################
# Rotates the breaking direction accordingly
############################################################

tag @s remove tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.block_breaker.north] rotated 180 0 positioned ^ ^ ^1 run function tcc:block/block_breakers/check_block
execute if entity @s[tag=tcc.block_breaker.south] rotated 0 0 positioned ^ ^ ^1 run function tcc:block/block_breakers/check_block
execute if entity @s[tag=tcc.block_breaker.east] rotated 270 0 positioned ^ ^ ^1 run function tcc:block/block_breakers/check_block
execute if entity @s[tag=tcc.block_breaker.west] rotated 90 0 positioned ^ ^ ^1 run function tcc:block/block_breakers/check_block
execute if entity @s[tag=tcc.block_breaker.up] rotated 0 -90 positioned ^ ^ ^1 run function tcc:block/block_breakers/check_block
execute if entity @s[tag=tcc.block_breaker.down] rotated 0 90 positioned ^ ^ ^1 run function tcc:block/block_breakers/check_block
