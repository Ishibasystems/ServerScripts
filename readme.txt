動作にはFreeBSD jailの名前にtweepyが入っている&中にtweepyがあること必須です

・CPUの動作周波数とCPU温度をtweet
・S.M.A.R.T.によるHDD温度をtweet
・zfsストレージプールの再構築状況をtweet
・zfsストレージプールのスクラブ状況をtweet

・ファイル構成
  preinit.sh	起動初期化前に実行するスクリプト(やることないのでメッセージのみ)
  postinit.sh	起動初期化後に実行するスクリプト(キーマップをHHKBに変更するだけ)
  shutdown.sh	シャットダウン時に実行するスクリプト(シャットダウンをtweetする)
　status.sh	CPU周波数/CPU温度/HDD温度を出力するスクリプト
　zpool_resilver.sh	プールの再構築状況を出力するスクリプト
　zpool_scrub.sh	プールのスクラブ状況を出力するスクリプト
  server_tweet.sh	tweepyにtweetさせたりFreeBSD jailのJIDを確認したり。
  server_cron.sh	cronに登録しているスクリプト(status.sh→server_tweet.shパイプ)

※起動時に実行するスクリプト(起動をtweetする)はtweepyのjail中のrc.dに設定
