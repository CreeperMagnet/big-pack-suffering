execute store result score $temp flor.dummy if entity @e[tag=flor.verdant_invo_wolf,distance=..15]
execute unless score $temp flor.dummy matches 3.. run summon wolf ~ ~ ~ {DeathLootTable:"minecraft:empty",CollarColor:5b,Tags:["flor.20ticking","flor.ticking","flor.verdant_invo_wolf"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:40,ShowParticles:0b}]}
execute unless score $temp flor.dummy matches 3.. as @e[tag=flor.verdant_invo_wolf,limit=1,sort=nearest] run data modify entity @s Owner set from entity @p UUID