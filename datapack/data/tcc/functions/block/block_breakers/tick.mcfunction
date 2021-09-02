############################################################
# Commands to run tickly for block breakers
############################################################

execute if entity @s[tag=tcc.block_breaker.powered] unless block ~ ~ ~ dropper[triggered=true] run tag @s remove tcc.block_breaker.powered
execute if entity @s[tag=tcc.block_breaker.north,tag=!tcc.scheduled.block_breaker,tag=!tcc.block_breaker.powered] align xz rotated 180 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.south,tag=!tcc.scheduled.block_breaker,tag=!tcc.block_breaker.powered] align xz rotated 0 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.east,tag=!tcc.scheduled.block_breaker,tag=!tcc.block_breaker.powered] align xz rotated 270 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.west,tag=!tcc.scheduled.block_breaker,tag=!tcc.block_breaker.powered] align xz rotated 90 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.up,tag=!tcc.scheduled.block_breaker,tag=!tcc.block_breaker.powered] align xz rotated 0 -90 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.down,tag=!tcc.scheduled.block_breaker,tag=!tcc.block_breaker.powered] align xz rotated 0 90 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.scheduled.block_breaker,scores={tcc.dummy=..0}] run function tcc:block/block_breakers/scheduled_break_check
scoreboard players remove @s[scores={tcc.dummy=1..}] tcc.dummy 1
execute if block ~ ~ ~ #tcc:air run function tcc:block/block_breakers/discern_break
