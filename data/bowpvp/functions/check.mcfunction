# ゲームは始まってなくて、プレイヤー人数がふたりか？
execute unless score $gm ingame matches 1.. run execute if score $gm players matches 2.. run function bowpvp:prepare/prepare_game

# 退出の検知
execute if score $gm ingame matches 1.. run
