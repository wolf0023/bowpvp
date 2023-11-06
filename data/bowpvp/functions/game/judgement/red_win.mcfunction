# 負けていないほうを勝利判定とした(blue_loseから)
title @s title {"text": "§cゲームに勝利しました！"}
scoreboard players add @s wins 1
    #モードをゲーム終了に
    scoreboard players set $gm ingame 4

# 終了メッセージ
function bowpvp:game/judgement/gameover
