# gamemasterのingameを1にして、準備フェーズに入る
scoreboard players add $gm ingame 1

# カウントダウン
execute if score $gm ingame matches 1 run scoreboard players set $gm timer 1
# タイマーセット(20ticks = 1s)
execute if score $gm ingame matches 1 run scoreboard players set $timer timer 6000
execute if score $gm ingame matches 1 run bossbar set timer players @a[scores={ingame=1}]
# アイテム付与
execute if score $gm ingame matches 2 as @a[scores={ingame=2}]
# 開始
execute if score $gm ingame matches 2 run scoreboard players set $gm timer 2
execute if score $gm ingame matches 2 run scoreboard players set $gm ingame 3
execute if score $gm ingame matches 2 run title @a[scores={ingame=2}] title {"text": ""}
