############################################################
# Makes teas drop teacups, rather than glass bottles. Yikes.
############################################################

tag @s[nbt={SelectedItem:{tag:{tcc:{id:"tea"}}}},gamemode=!creative] add tcc.scheduled.tea_drink.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"tea"}}}]},gamemode=!creative] add tcc.scheduled.tea_drink.offhand
advancement revoke @s only tcc:technical/item/tea/drink
