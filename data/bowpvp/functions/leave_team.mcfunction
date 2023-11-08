# プレイヤー数のカウントを-1し、チームから退出します
scoreboard players set @s ingame 0
execute if score $gm players matches 1.. run scoreboard players remove $gm players 1
team leave @s
tp @s 166 34 -110