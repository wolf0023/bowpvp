# ゲーム終了、引き分け、タイムアップ
playsound minecraft:block.anvil.use master @a[scores={ingame=3..}] ~ ~ ~ 1 1.5
tellraw @a {"text": "§6[bowpvp] §fゲーム終了！"}
tellraw @a [{"text": "§6[bowpvp] 今回の対戦: "},{"selector":"@a[team=redteam]","color": "red"},{"text": " §fvs "},{"selector":"@a[team=blueteam]","color": "blue"}]
tellraw @a [{"text": "§6[bowpvp] §6引き分け"}]

function bowpvp:game/reset