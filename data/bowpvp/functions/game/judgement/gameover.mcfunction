# ゲーム終了、勝敗が決まったとき
playsound minecraft:block.anvil.use master @a[scores={ingame=3..}] ~ ~ ~ 1 1.5
tellraw @a {"text": "§6[bowpvp] §fゲーム終了！"}
tellraw @a [{"text": "§6[bowpvp] 今回の対戦: "},{"selector":"@a[team=redteam]","color": "red"},{"text": " §fvs "},{"selector":"@a[team=blueteam]","color": "blue"}]
tellraw @a [{"text": "§6[bowpvp] §f勝者: "},{"selector":"@s","color": "gold"}]

schedule function bowpvp:game/reset 3s