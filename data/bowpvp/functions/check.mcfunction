# ゲームは始まってなくて、プレイヤー人数がふたりか？
execute unless score $gm ingame matches 1.. run execute if score $gm players matches 2.. run function bowpvp:prepare/prepare_game

# カウントダウン開始
execute if score $gm timer matches 1 run function bowpvp:prepare/coundown

# タイマー開始
execute if score $gm timer matches 2 run function bowpvp:game/timer/game_timer

# 勝利判定 負けたプレイヤーがいるなら...
execute if score $gm ingame matches 3 as @a[scores={ingame=2}] if score @s death matches 1 run function bowpvp:game/judgement/gameover