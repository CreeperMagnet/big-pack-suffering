############################################################
# Damages an offhand item using scoreboards
############################################################

tag @s remove tcc.tag
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
function tcc:item/item_modification/durability/damage/rings/potion/modify_durability

item replace entity @s[tag=tcc.tag] weapon.offhand with minecraft:carrot_on_a_stick
execute unless entity @s[tag=tcc.tag] run item modify entity @s weapon.offhand tcc:potion_durability_lore
execute unless entity @s[tag=tcc.tag] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute unless entity @s[tag=tcc.tag] unless data storage tcc:storage root.temp.item.tag.tcc.gemstone{lore_attribute:1} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-3] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.item.tag.tcc.gemstone{lore_attribute:1} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-6] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.tag] run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.offhand tcc:copy_nbt
