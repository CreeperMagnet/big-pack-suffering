execute as @s[type=villager,tag=!villagerhats.has_novice_trade,predicate=villagerhats:entity/villager/can_offer_biome_hats] run function villagerhats:entity/villager/add_trades/novice
execute as @s[type=villager,tag=!villagerhats.has_master_trade,predicate=villagerhats:entity/villager/can_offer_profession_hats] run function villagerhats:entity/villager/add_trades/master