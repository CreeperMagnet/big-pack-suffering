advancement revoke @s only villagerhats:technical/item/hat/equip

data remove storage villagerhats:storage NBT.Item
data modify storage villagerhats:storage NBT.Item set from entity @s Inventory[{Slot:103b}]

advancement grant @s[nbt={Inventory:[{Slot:103b,tag:{villagerhats:{id:"witch_hat"}}}]}] only tcc:minecraft/adventure/witch_hat

item replace entity @s armor.head with minecraft:flower_banner_pattern
item modify entity @s armor.head villagerhats:equip_hat
