# 待機中のプレイヤーは1, 参加していないプレイヤーは0 
execute if score @p ingame matches 0 as @p run scoreboard players set @s ingame 1
execute if score @p ingame matches 0 as @p run tellraw @s {"text": "§6[bowpvp] §fゲームに参加しました。"}
execute if score @p ingame matches 0 as @p run function bowpvp:join_team

execute if score @p ingame matches 1 as @p run scoreboard players set @s ingame 0
execute if score @p ingame matches 1 as @p run tellraw @s {"text": "§6[bowpvp] §fゲームから退出しました。"}
execute if score @p ingame matches 1 as @p run function bowpvp:leave_team