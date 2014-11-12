johnny = require 'johnny-five'
Spark = require 'spark-io'


accessToken = '804c85106dd4ed2c713fc1df2a97afa4d0e83376'
deviceId = '51ff69065067545739540287'


board = new johnny.Board
  io: new Spark
    token: accessToken
    deviceId: deviceId

board.on 'ready', ->
  led = new johnny.Led 'D0'
  led.blink()

