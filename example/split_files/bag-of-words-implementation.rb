class BagOfWords
  attr_reader :bag

  def initialize(docs)
    @docs = docs
    @bag = []

    magic
  end

  def dictionary
    Hash[unique_items.zip 1..unique_items.size]
  end

  private

  def magic
    @docs.map! { |doc| doc.gsub(/[^\w| ]/, '').split }

    @docs.each do |doc|
      @bag << dictionary.map { |key, value| doc.select { |item| item == key }.count }
    end
  end

  def words_only
    @docs.join(' ').gsub(/[^\w| ]/, '').split
  end

  def unique_items
    words_only.uniq
  end

end

# docs = ["Nagle's algorithm works by combining a number of small outgoing messages, and sending them all at once. Specifically, as long as there is a sent packet for which the sender has received no acknowledgment, the sender should keep buffering its output until it has a full packet's worth of output, so that output can be sent all at once.", "In general, since Nagle's algorithm is only a defense against careless applications, it will not benefit a carefully written application that takes proper care of buffering; the algorithm has either no effect, or negative effect on the application."]

docs = ["John likes to watch movies. Mary likes movies too.", "John also likes to watch football games."]

my_bag = BagOfWords.new(docs)

p my_bag.dictionary
my_bag.bag.each do |b|
  p b
end
