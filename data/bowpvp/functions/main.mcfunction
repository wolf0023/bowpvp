# チーム&スコアボード関連
team add redteam "§c赤チーム"
team add blueteam "§b青チーム"
team modify redteam color red
team modify blueteam color aqua

scoreboard objectives add death deathCount "死亡検知"
scoreboard objectives add leave minecraft.custom:minecraft.leave_game "退出検知"
scoreboard objectives add ingame dummy "ゲーム中判定"
scoreboard objectives add timer dummy "タイマー"
scoreboard objectives add players dummy "プレイヤー数"
scoreboard objectives add wins dummy "勝利数"
scoreboard objectives add losses dummy "敗北数"
scoreboard objectives add rate dummy "レート"

tellraw @a {"text": "§6[bowpvp] §fbowpvpを読み込みました"}