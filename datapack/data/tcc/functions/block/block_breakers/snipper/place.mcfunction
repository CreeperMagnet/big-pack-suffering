############################################################
# Commands for when a player places a block breaker
############################################################

execute if block ~ ~ ~ dropper[facing=north] run summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.snipper"}',HandItems:[{id:"minecraft:shears",Count:1b,tag:{CustomModelData:330000}}],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Enchantments:[],CustomModelData:330024}}],Tags:["tcc.block","tcc.entity","tcc.snipper","tcc.block_breaker","global.ignore","tcc.block_placing","tcc.block_breaker.north"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ dropper[facing=south] run summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.snipper"}',HandItems:[{id:"minecraft:shears",Count:1b,tag:{CustomModelData:330000}}],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Enchantments:[],CustomModelData:330025}}],Tags:["tcc.block","tcc.entity","tcc.snipper","tcc.block_breaker","global.ignore","tcc.block_placing","tcc.block_breaker.south"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ dropper[facing=east] run summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.snipper"}',HandItems:[{id:"minecraft:shears",Count:1b,tag:{CustomModelData:330000}}],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Enchantments:[],CustomModelData:330026}}],Tags:["tcc.block","tcc.entity","tcc.snipper","tcc.block_breaker","global.ignore","tcc.block_placing","tcc.block_breaker.east"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ dropper[facing=west] run summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.snipper"}',HandItems:[{id:"minecraft:shears",Count:1b,tag:{CustomModelData:330000}}],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Enchantments:[],CustomModelData:330027}}],Tags:["tcc.block","tcc.entity","tcc.snipper","tcc.block_breaker","global.ignore","tcc.block_placing","tcc.block_breaker.west"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ dropper[facing=up] run summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.snipper"}',HandItems:[{id:"minecraft:shears",Count:1b,tag:{CustomModelData:330000}}],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Enchantments:[],CustomModelData:330028}}],Tags:["tcc.block","tcc.entity","tcc.snipper","tcc.block_breaker","global.ignore","tcc.block_placing","tcc.block_breaker.up"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ dropper[facing=down] run summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.snipper"}',HandItems:[{id:"minecraft:shears",Count:1b,tag:{CustomModelData:330000}}],ArmorItems:[{},{},{},{id:"minecraft:dropper",Count:1b,tag:{Enchantments:[],CustomModelData:330029}}],Tags:["tcc.block","tcc.entity","tcc.snipper","tcc.block_breaker","global.ignore","tcc.block_placing","tcc.block_breaker.down"],NoGravity:1b,Invisible:1b,Marker:1b}