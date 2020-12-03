# frozen_string_literal: true

DEGREES_BETWEEN_HOURS = 30
HOUR_HAND_DEGREES_PER_MINUTE = 0.5
MINUTE_HAND_DEGREES_PER_MINUTE = 6

while true
  begin
    print 'Enter time (i.e. 12:40): '
    time = gets.chomp
    hour, minute = time.split(':').map(&:to_i)
    unless hour.between?(0, 23) && minute.between?(0, 59)
      raise 'Whong time given (should be between 00:00-23:59), try again.'
    end

    break
  rescue RuntimeError => e
    puts e.message
  rescue StandardError => e
    puts 'Something went wrong, try again.'
  end
  puts
end

degrees_to_minute_hand = minute * MINUTE_HAND_DEGREES_PER_MINUTE
degrees_to_hour_hand = (hour % 12) * DEGREES_BETWEEN_HOURS + minute * HOUR_HAND_DEGREES_PER_MINUTE

if degrees_to_hour_hand < degrees_to_minute_hand
  puts "Angle from hour hand to minute hand at #{time} - #{degrees_to_minute_hand - degrees_to_hour_hand}\u00B0"
  puts "Angle from minute hand to hour hand at #{time} - #{360 - (degrees_to_minute_hand - degrees_to_hour_hand)}\u00B0"
else
  puts "Angle from hour hand to minute hand at #{time} - #{360 - (degrees_to_hour_hand - degrees_to_minute_hand)}\u00B0"
  puts "Angle from minute hand to hour hand at #{time} - #{degrees_to_hour_hand - degrees_to_minute_hand}\u00B0"
end
