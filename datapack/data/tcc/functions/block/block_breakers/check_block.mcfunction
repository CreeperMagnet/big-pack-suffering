############################################################
# Checks if the block is breakable
############################################################

execute if entity @s[tag=tcc.excavator] if predicate tcc:block/block_breakers/excavator run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.chopper] if predicate tcc:block/block_breakers/chopper run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.sifter] if predicate tcc:block/block_breakers/sifter run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.snipper] if predicate tcc:block/block_breakers/snipper run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.harvester] if predicate tcc:block/block_breakers/harvester run function tcc:block/block_breakers/break_block
