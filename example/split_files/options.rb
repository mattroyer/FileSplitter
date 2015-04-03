class Person

  def initialize(*options)
    @options = options
  end

  def options
    Hash[@options[0]]
  end
end

p = Person.new(
  height: "70",
  weight: "210",
  last: "Royer",
  first: "Matthew"
)

puts p.options[:height]
puts p.options[:weight]
puts p.options[:first]
