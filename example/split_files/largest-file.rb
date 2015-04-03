# NOTE: Use :mtime instead of size
#       for the last modified file

puts Dir.glob("#{File.dirname(__FILE__)}/*.*").max_by(&File.method(:size))
