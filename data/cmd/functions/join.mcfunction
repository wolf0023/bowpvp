# 待機中のプレイヤーは1, 参加していないプレイヤーは0
# 2は切り替え用のため、使えない
execute if score $gm players matches 2.. run tellraw @s {"text": "§6[bowpvp] §cすでにプレイヤーが二人います。"}

execute unless score @s ingame matches 1.. run tellraw @s {"text": "§6[bowpvp] §fゲームに参加しました。"}
execute unless score @s ingame matches 1.. run function bowpvp:join_team

execute if score @s ingame matches 1 run tellraw @s {"text": "§6[bowpvp] §fゲームから退出しました。"}
execute if score @s ingame matches 1 run function bowpvp:leave_team

execute if score @s ingame matches 2 run scoreboard players set @s ingame 1