require "rubygems"
require "arduino_firmata"

arduino = ArduinoFirmata.connect
puts "firmata version #{arduino.version}"

loop do
  initial=1
  arduino.digital_write initial, true
  sleep 0.125
  arduino.digital_write initial, false
  arduino.digital_write initial+=1, true
  sleep 0.125



end
