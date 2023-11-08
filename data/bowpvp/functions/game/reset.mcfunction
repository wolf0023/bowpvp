# ロビーへの転送
tp @a[scores={ingame=1..}] 166 34 -110
clear @a[scores={ingame=1..}]

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

bossbar remove timer
bossbar add timer "残り時間"
bossbar set timer color green