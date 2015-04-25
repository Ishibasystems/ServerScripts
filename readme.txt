・CPUの動作周波数とCPU温度をtweet
・S.M.A.R.T.によるHDD温度をtweet

・ファイル構成
  preinit.sh	起動初期化前に実行するスクリプト(やることないのでメッセージのみ)
  postinit.sh	起動初期化後に実行するスクリプト(キーマップをHHKBに変更するだけ)
  shutdown.sh	シャットダウン時に実行するスクリプト(シャットダウンをtweetする)
　status.sh	CPU周波数/CPU温度/HDD温度を出力するスクリプト
  server_tweet.sh	tweepyにtweetさせたりFreeBSD jailのJIDを確認したり。
  server_cron.sh	cronに登録しているスクリプト(status.sh→server_tweet.shパイプ)

※起動時に実行するスクリプト(起動をtweetする)はtweepyのjail中のrc.dに設定されています
