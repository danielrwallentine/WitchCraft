data modify storage wc:tmp run_line set from storage wc:tmp list[0]

data modify storage wc:tmp display_line.c set value ''
data modify storage wc:tmp display_line.a1 set value ''
data modify storage wc:tmp display_line.a2 set value ''


execute if data storage wc:tmp {run_line:{c:1}} run data modify storage wc:tmp display_line.c set value '{"text":"summon  ","color":"gold"}'
execute if data storage wc:tmp {run_line:{c:2}} run data modify storage wc:tmp display_line.c set value '{"text":"damage  ","color":"gold"}'
execute if data storage wc:tmp {run_line:{c:3}} run data modify storage wc:tmp display_line.c set value '{"text":"effect  ","color":"gold"}'

execute if data storage wc:tmp {run_line:{a:{entity:"fireball"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"fireball  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{entity:"lightning"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"lightning  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{entity:"zombie"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"zombie  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{entity:"skeleton"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"skeleton  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{entity:"fangs"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"fangs  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{entity:"bullet"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"bullet  ","color":"white"}'

execute if data storage wc:tmp {run_line:{a:{target:"target"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"target  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{target:"nearest"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"nearest player  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{target:"all"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"all nearby players  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{target:"all_entities"}}} run data modify storage wc:tmp display_line.a1 set value '{"text":"all nearby entities  ","color":"white"}'

execute if data storage wc:tmp {run_line:{a:{position:"forward"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"forward  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{position:"backward"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"backward  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{position:"left"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"left  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{position:"right"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"right  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{position:"up"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"up  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{position:"down"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"down  ","color":"white"}'

execute if data storage wc:tmp {run_line:{a:{effect:"poison"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"poison  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"speed"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"speed  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"slowness"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"slowness  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"nausea"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"nausea  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"invisibility"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"invisibility  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"blindness"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"blindness  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"night_vision"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"night vision  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"wither"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"wither  ","color":"white"}'
execute if data storage wc:tmp {run_line:{a:{effect:"glowing"}}} run data modify storage wc:tmp display_line.a2 set value '{"text":"glowing  ","color":"white"}'


tellraw @p ["",{"nbt":"display_line.c","storage":"wc:tmp","interpret":true},{"nbt":"display_line.a1","storage":"wc:tmp","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger wc.trigger set -200"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Cycle Options","bold":true,"color":"white"}]}},{"nbt":"display_line.a2","storage":"wc:tmp","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger wc.trigger set -201"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to Cycle Options","bold":true,"color":"white"}]}}]

# End and Loop
data remove storage wc:tmp list[0]
execute unless data storage wc:tmp {list:[]} as @s at @s run function witchcraft:ritual/imbue_menu_lines