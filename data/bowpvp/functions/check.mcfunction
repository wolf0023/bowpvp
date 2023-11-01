# ゲームは始まってなくて、プレイヤー人数がふたりか？
execute unless score $gm ingame matches 1.. run execute if score $gm players matches 2.. run function bowpvp:prepare/prepare_game

# 考察中... 退出の検知 $gmのingameが1以上でゲームが開始されている判定

#カウントダウン開始
execute if score $gm timer matches 1 run function bowpvp:prepare/coundown

# 勝利判定 負けたプレイヤーがいるなら...
execute