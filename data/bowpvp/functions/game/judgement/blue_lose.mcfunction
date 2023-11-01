# 負けてないほうを勝利判定とした
title @s title {"text": "§cゲームに敗北しました！"}
scoreboard players add @s losses 1
execute as @a[team=redteam] run function bowpvp:game/judgement/red_win