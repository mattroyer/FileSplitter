post = """Hello there

something_cool [at] cool dot org

matthewroyer at awesome dot com

And you can take that to the bank.
"""

regex = /(.*?).\b(at)\b.(.*?).\b(dot)\b.(.*?)$/i

arr = post.scan(regex).map { |entry| entry.join(" ") }

stuff = arr.map { |entry| entry.gsub(/\b(at)\b/, '@').gsub(/\b(dot)\b/, '.').delete(' ') }

puts stuff
