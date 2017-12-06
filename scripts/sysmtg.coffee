# Description:
#   カービィが水曜の10時50分に開発定例をお知らせしてくれる機能です。
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Notes:
#   水曜日は開発定例
#
# Author:
#   kosachan

cronJob = require('cron').CronJob

module.exports = (robot) ->

  cronjob = new cronJob(
    cronTime: "0 50 10 * * wed"    # 実行時間
    start:    true                # すぐにcronのjobを実行するか
    timeZone: "Asia/Tokyo"        # タイムゾーン指定
    onTick: ->                    # 時間が来た時に実行する処理
      robot.send {room: "#random"}, "ぷわぁ〜開発定例！開発定例！"
  )
