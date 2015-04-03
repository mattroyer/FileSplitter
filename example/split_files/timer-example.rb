def timer(minutes)
  start_time = Time.now
  minutes.downto(1) { |i| sleep 60 }
end

timer 1

puts "Done!"
