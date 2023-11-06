# 待機中のプレイヤーは1, 参加していないプレイヤーは0
# 2は切り替え用のため、使えない
# プレイヤーが二人いる場合は参加できません
execute unless score $gm players matches 2.. unless score @s ingame matches 1.. run tellraw @s {"text": "§6[bowpvp] §fゲームに参加しました。"}
execute unless score $gm players matches 2.. unless score @s ingame matches 1.. run function bowpvp:join_team

# すでに始まっている場合は退出できません
execute unless score $gm ingame matches 1.. if score @s ingame matches 1 run tellraw @s {"text": "§6[bowpvp] §fゲームから退出しました。"}
execute unless score $gm ingame matches 1.. if score @s ingame matches 1 run function bowpvp:leave_team

execute if score @s ingame matches 2 run scoreboard players set @s ingame 1

#エラー用メッセージ
execute if score $gm players matches 2.. run tellraw @s {"text": "§6[bowpvp] §cError: すでにプレイヤーが二人います"}
execute if score $gm ingame matches 1.. run tellraw @s {"text": "§6[bowpvp] §cError: すでにゲームが始まっています"}