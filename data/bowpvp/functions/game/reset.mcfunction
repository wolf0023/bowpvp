# リセット用
scoreboard objectives remove death
scoreboard objectives remove leave
scoreboard objectives remove ingame
scoreboard objectives remove timer 
scoreboard objectives remove players

team empty blueteam
team empty redteam

scoreboard objectives add death deathCount "死亡検知"
scoreboard objectives add leave minecraft.custom:minecraft.leave_game "退出検知"
scoreboard objectives add ingame dummy "ゲーム中判定"
scoreboard objectives add timer dummy "タイマー"
scoreboard objectives add players dummy "プレイヤー数"