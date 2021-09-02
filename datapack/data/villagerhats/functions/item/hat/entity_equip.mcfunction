execute as @e[distance=..30,type=#villagerhats:can_wear_hats,tag=!global.ignore,predicate=villagerhats:entity/wearing_hat] run data modify entity @s ArmorItems[3].id set value "minecraft:flower_banner_pattern"
advancement revoke @s only villagerhats:technical/item/hat/entity_equip
