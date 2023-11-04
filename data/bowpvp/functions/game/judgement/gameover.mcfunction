# ゲーム終了、勝敗が決まったとき
tellraw @a {"text": "§6[bowpvp] §fゲーム終了！"}
tellraw @a [{"text": "§6[bowpvp] 今回の対戦: "},{"selector":"@a[team=redteam]","color": "red"},{"text": " §fvs "},{"selector":"@a[team=blueteam]","color": "blue"}]
tellraw @a [{"text": "§6[bowpvp] §f勝者: "},{"selector":"@a[scores={death=0}]","color": "gold"}]

function bowpvp:game/reset