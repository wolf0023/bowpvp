# ボスバーに現在のタイマーを設定
execute store result bossbar timer value run scoreboard players get $timer timer

#タイマー機構 (初期値6000ticks)
scoreboard players remove $timer timer 1

execute if score $timer timer matches ..1200 run tellraw @a[scores={ingame=2}] {"text": "§6[bowpvp] §fゲーム終了まで残り1分！"}
execute if score $timer timer matches ..0 run function bowpvp:game/timer/gameover