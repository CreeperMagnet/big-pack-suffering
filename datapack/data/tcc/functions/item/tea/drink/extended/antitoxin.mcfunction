############################################################
# Gives you the tag for a tea
############################################################

function tcc:item/tea/drink/clear_tags
scoreboard players set @s tcc.tea 450
tag @s add tcc.tea.antitoxin
function tcc:item/tea/clear/main
advancement revoke @s only tcc:technical/item/tea/drink/extended/antitoxin
