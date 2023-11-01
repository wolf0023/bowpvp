# 負けていないほうを勝利判定とした
title @s title {"text": "§cゲームに敗北しました！"}
scoreboard players add @s losses 1
execute as @a[team=blueteam] run function bowpvp:game/judgement/blue_win