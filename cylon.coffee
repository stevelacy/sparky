spark = require 'spark'
Cylon = require 'cylon'

accessToken = '804c85106dd4ed2c713fc1df2a97afa4d0e83376'
deviceId = '51ff69065067545739540287'


Cylon.robot
  connection:
    name: 'spark'
    adaptor: 'spark'
    accessToken: accessToken
    deviceId: deviceId

  device:
    name: 'led'
    driver: 'led'
    pin: 'D0'

  work: (my) ->
    every (1).second(), ->
      my.led.toggle()
      return

    return
.start()
