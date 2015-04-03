require 'json'

data = JSON.parse('{"stuff":{"this":"is awesome"},"oh":"no"}')

data.keys.each do |key|
  puts key
  puts "-----------"
  puts data[key]
  puts
  puts
end
