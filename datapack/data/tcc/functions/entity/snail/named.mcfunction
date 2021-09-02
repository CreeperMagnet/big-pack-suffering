############################################################
# Turns a snail into Gary
############################################################

data remove storage tcc:storage root.temp

data modify storage tcc:storage root.temp.snail.ArmorItems set value [{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{tcc:{storage:{model_items:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330022}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330022}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330022}}]}},CustomModelData:330000}}]
data modify storage tcc:storage root.temp.snail.HandItems set value [{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330022,display:{color:16777215}}}]

data modify entity @s ArmorItems set from storage tcc:storage root.temp.snail.ArmorItems
data modify entity @s HandItems set from storage tcc:storage root.temp.snail.HandItems

tag @s remove tcc.snail.black
tag @s remove tcc.snail.spiral
tag @s remove tcc.snail.yellow
tag @s remove tcc.snail.skull
tag @s remove tcc.snail.light_blue

tag @s add tcc.snail.gary
