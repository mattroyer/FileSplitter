# Bad move with modifying String class
# but this is just for fun

require 'open-uri'

page = open("http://en.wikipedia.org").read

class String
  def get_text(tag)
    self.scan(/(<#{tag}.*?>)(.*?)(<\/#{tag}>)/i)
  end
end

puts page.get_text("a")
