data modify storage wc:tmp instructions set from entity @s Item.tag.instructions
kill @e[type=item,distance=...5]
execute align xyz run summon minecraft:item_frame ~ ~ ~ {Facing:1,Invisible:1,Item:{id:"minecraft:carrot_on_a_stick",Count:1,tag:{Tags:"wc.wand",CustomModelData:1,display:{Name:'{"text":"Wand","italic":"false"}'}}}, Invulnerable:1, Tags:["wc.imbuing"]}
data modify entity @e[type=minecraft:item_frame,distance=...5,limit=1] Item.tag.instructions set from storage wc:tmp instructions
execute as @p run function witchcraft:ritual/imbue_menu