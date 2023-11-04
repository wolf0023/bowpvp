# 負けていないほうを勝利判定とした(red_loseから)
title @s title {"text": "§cゲームに勝利しました！"}
scoreboard players add @s wins 1

# 終了
function bowpvp:game/judgement/gameover