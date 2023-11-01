# ゲームは始まってなくて、プレイヤー人数がふたりか？
execute unless score $gm ingame matches 1.. run execute if score $gm players matches 2.. run function bowpvp:prepare/prepare_game

# 考察中... 退出の検知 $gmのingameが1以上でゲームが開始されている判定

# 勝利判定 負けたプレイヤーがいるなら...
