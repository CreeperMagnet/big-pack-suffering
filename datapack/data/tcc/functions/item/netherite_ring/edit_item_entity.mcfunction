############################################################
# Changes netherite ring to netherite ingot
############################################################

data modify entity @s Item.id set value "minecraft:netherite_ingot"
data modify entity @s Item.tag.UUID set from entity @s UUID
