# gamemasterにプレイヤー数を追加、複数試合はできない
execute unless score $gm players matches 2.. run scoreboard players add $gm players 1
execute if score $gm players matches 1 run team join redteam @s
execute if entity @s[team=redteam] run tp 18 -59 4

execute if score $gm players matches 2 run team join blueteam @s
execute if entity @s[team=blueteam] run tp -3 -59 4

execute if score $gm players matches 2.. run tellraw @s {"text": "§6[bowpvp] §cすでにプレイヤーが二人います。"}