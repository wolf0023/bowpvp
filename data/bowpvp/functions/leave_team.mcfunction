# プレイヤー数のカウントを-1し、チームから退出します
execute if score $gm players matches 1.. run scoreboard players remove $gm players 1
team leave @s
tp @s 8 -60 12