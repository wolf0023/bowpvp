# カウントダウン機構
scoreboard players add $countdown timer 1

execute if score $countdown timer matches 20 run tellraw @a[scores={ingame=1}] {"text": "§6[bowpvp] 開始まで５..."}
execute if score $countdown timer matches 20 run playsound block.note_block.harp master @a[scores={ingame=1}] ~ ~ ~ 1 1
execute if score $countdown timer matches 40 run tellraw @a[scores={ingame=1}] {"text": "§6[bowpvp] 開始まで４..."}
execute if score $countdown timer matches 40 run playsound block.note_block.harp master @a[scores={ingame=1}] ~ ~ ~ 1 1
execute if score $countdown timer matches 60 run tellraw @a[scores={ingame=1}] {"text": "§6[bowpvp] 開始まで３..."}
execute if score $countdown timer matches 60 run playsound block.note_block.harp master @a[scores={ingame=1}] ~ ~ ~ 1 1
execute if score $countdown timer matches 80 run tellraw @a[scores={ingame=1}] {"text": "§6[bowpvp] 開始まで２..."}
execute if score $countdown timer matches 80 run playsound block.note_block.harp master @a[scores={ingame=1}] ~ ~ ~ 1 1
execute if score $countdown timer matches 100 run tellraw @a[scores={ingame=1}] {"text": "§6[bowpvp] 開始まで１..."}
execute if score $countdown timer matches 100 run playsound block.note_block.harp master @a[scores={ingame=1}] ~ ~ ~ 1 1

execute if score $countdown timer matches 120 run scoreboard players set @a[scores={ingame=1}] ingame 3
execute if score $countdown timer matches 120 run scoreboard players set $gm timer 0
execute if score $countdown timer matches 120 run function bowpvp:prepare/prepare_game