execute align xyz positioned ~.5 ~.5 ~.5 run setblock ~ ~ ~ minecraft:mangrove_roots
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:item_frame",Count:1,tag:{CustomModelData:1}},Tags:["wc.block1"]}
execute align xyz positioned ~.5 ~.5 ~.5 run data merge entity @e[type=minecraft:item_display,limit=1,distance=...1] {transformation:{scale:[1.001,1.001,1.001]}}
kill @s