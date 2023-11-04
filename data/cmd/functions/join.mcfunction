# 待機中のプレイヤーは1, 参加していないプレイヤーは0
# 2は切り替え用のため、使えない
execute unless score @p ingame matches 1.. as @p run scoreboard players set @s ingame 2
execute unless score @p ingame matches 1.. as @p run tellraw @s {"text": "§6[bowpvp] §fゲームに参加しました。"}
execute unless score @p ingame matches 1.. as @p run function bowpvp:join_team

execute if score @p ingame matches 1 as @p run scoreboard players set @s ingame 0
execute if score @p ingame matches 1 as @p run tellraw @s {"text": "§6[bowpvp] §fゲームから退出しました。"}
execute if score @p ingame matches 1 as @p run function bowpvp:leave_team

execute if score @p ingame matches 2 as @p run scoreboard players set @s ingame 1