path = `echo %path%`

items = path.split(';').select { |item| item != "" && item != "." && item != "\n" }
puts items
