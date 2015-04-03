#########################
# Bugzilla JSONRPC calls
#########################
#
# require 'open-uri'
# require 'json'
#
# class Bugzilla
#   attr_accessor :response
#
#   def initialize number
#     @number = number
#     @username = '<username>'
#     @password = '<password>'
#     @bug_url = "http://bugs.mainman.dcs/bugzilla/show_bug.cgi?id=#{@number}"
#   end
#
#   def get_bug method
#     options = {
#       method: "Bug.#{method}",
#       params: %W([{"Bugzilla_login":"#{@username}","Bugzilla_password":"#{@password}","ids":["#{@number}"]}])
#     }
#
#     params = URI.encode_www_form(options)
#
#     page = open("http://bugs.mainman.dcs/bugzilla/jsonrpc.cgi?#{params}").read
#
#     @response = JSON.parse page
#   end
#
#   def info
#     get_bug 'get'
#
#     "Priority: #{@response['result']['bugs'][0]['priority']}\nSummary: #{@response['result']['bugs'][0]['summary']}\nLink: #{@bug_url}"
#   end
#
#   def comments
#     get_bug 'comments'
#
#     @response['result']['bugs'][@number]['comments'].map { |comment| "Author: #{comment['author']}\n\nComment: #{comment['text']}\n\n" }
#   end
#
# end


#######################
# Missing Keys in Hash
#######################
#
# require 'date'
#
# a = {"name"=>"test_my_files_config","data"=>{"03/07/2014"=>100.0,"07/18/2014"=>66.67,"07/21/2014"=>50.0,"07/22/2014"=>40.0,"07/23/2014"=>33.33,"08/01/2014"=>42.86,"08/04/2014"=>37.5,"08/06/2014"=>33.33,"08/08/2014"=>30.0,"08/13/2014"=>27.27,"08/14/2014"=>38.46,"08/18/2014"=>42.86,"08/19/2014"=>41.18,"08/22/2014"=>38.89,"08/27/2014"=>35.0,"08/28/2014"=>33.33,"08/29/2014"=>30.43,"09/02/2014"=>29.17,"09/03/2014"=>26.92,"09/04/2014"=>25.93,"09/17/2014"=>23.33,"09/18/2014"=>22.58,"09/22/2014"=>21.88,"09/29/2014"=>21.21,"10/21/2014"=>20.59,"10/28/2014"=>19.44,"10/29/2014"=>18.92,"10/30/2014"=>18.42,"10/31/2014"=>17.95,"11/03/2014"=>17.5,"11/05/2014"=>17.07,"11/06/2014"=>16.67,"11/11/2014"=>16.28,"11/14/2014"=>15.91,"12/02/2014"=>17.78,"12/03/2014"=>19.57,"12/04/2014"=>21.28,"12/15/2014"=>22.92,"12/23/2014"=>24.49,"01/06/2015"=>26.0,"01/08/2015"=>25.49,"01/14/2015"=>25.0,"01/15/2015"=>24.53,"01/26/2015"=>24.07,"01/28/2015"=>23.21,"02/02/2015"=>22.81,"02/03/2015"=>22.41,"02/05/2015"=>22.03,"02/09/2015"=>21.67,"02/27/2015"=>22.95,"03/03/2015"=>22.58,"03/05/2015"=>22.22,"03/11/2015"=>21.88,"03/13/2015"=>21.54,"03/16/2015"=>21.21}}
# b = {"name"=>"test_login","data"=>{"03/07/2014"=>0,"07/18/2014"=>0,"07/21/2014"=>0,"07/22/2014"=>0,"07/23/2014"=>0,"07/24/2014"=>0,"07/28/2014"=>0,"08/01/2014"=>0,"08/04/2014"=>0,"08/05/2014"=>0,"08/08/2014"=>0,"08/13/2014"=>0,"08/14/2014"=>9.52,"08/18/2014"=>13.64,"08/19/2014"=>16.0,"08/22/2014"=>15.38,"08/27/2014"=>14.29,"08/28/2014"=>13.79,"08/29/2014"=>12.9,"09/02/2014"=>12.5,"09/03/2014"=>11.76,"09/04/2014"=>11.43,"09/17/2014"=>10.53,"09/18/2014"=>10.26,"09/22/2014"=>10.0,"09/24/2014"=>9.52,"09/29/2014"=>9.3,"10/03/2014"=>9.09,"10/15/2014"=>11.11,"10/16/2014"=>10.87,"10/21/2014"=>10.64,"10/28/2014"=>10.2,"10/29/2014"=>10.0,"10/30/2014"=>9.8,"10/31/2014"=>9.62,"11/03/2014"=>9.43,"11/05/2014"=>9.26,"11/06/2014"=>9.09,"11/11/2014"=>8.93,"11/14/2014"=>8.77,"12/02/2014"=>8.62,"12/03/2014"=>8.47,"12/04/2014"=>8.33,"12/15/2014"=>8.2,"12/23/2014"=>8.06,"01/06/2015"=>7.94,"01/07/2015"=>10.77,"01/08/2015"=>10.61,"01/13/2015"=>16.46,"01/14/2015"=>15.85,"01/15/2015"=>15.66,"01/26/2015"=>14.77,"01/27/2015"=>20.0,"01/28/2015"=>19.61,"02/02/2015"=>19.42,"02/03/2015"=>19.23,"02/05/2015"=>19.05,"02/09/2015"=>18.87,"02/27/2015"=>18.69,"03/03/2015"=>18.52,"03/05/2015"=>18.35,"03/11/2015"=>18.02,"03/13/2015"=>17.86,"03/16/2015"=>17.7}}
#
# # a_dates = a["data"].keys.map { |item| Date.strptime(item, '%m/%d/%Y') }
# a_dates = a["data"].keys
# b_dates = b["data"].keys
#
# p b_dates - a_dates


###############
# Path Values
###############
#
# path = `echo %path%`
#
# items = path.split(';').select { |item| item != "" && item != "." && item != "\n" }
# puts items


###############
# Sync STDOUT
###############
#
# $stdout.sync = true
#
# 5.times do
#   putc('.')
#   sleep(2)
# end


##############################
# Bag of Words implementation
##############################
#
# class BagOfWords
#   attr_reader :bag
#
#   def initialize(docs)
#     @docs = docs
#     @bag = []
#
#     magic
#   end
#
#   def dictionary
#     Hash[unique_items.zip 1..unique_items.size]
#   end
#
#   private
#
#   def magic
#     @docs.map! { |doc| doc.gsub(/[^\w| ]/, '').split }
#
#     @docs.each do |doc|
#       @bag << dictionary.map { |key, value| doc.select { |item| item == key }.count }
#     end
#   end
#
#   def words_only
#     @docs.join(' ').gsub(/[^\w| ]/, '').split
#   end
#
#   def unique_items
#     words_only.uniq
#   end
#
# end
#
# # docs = ["Nagle's algorithm works by combining a number of small outgoing messages, and sending them all at once. Specifically, as long as there is a sent packet for which the sender has received no acknowledgment, the sender should keep buffering its output until it has a full packet's worth of output, so that output can be sent all at once.", "In general, since Nagle's algorithm is only a defense against careless applications, it will not benefit a carefully written application that takes proper care of buffering; the algorithm has either no effect, or negative effect on the application."]
#
# docs = ["John likes to watch movies. Mary likes movies too.", "John also likes to watch football games."]
#
# my_bag = BagOfWords.new(docs)
#
# p my_bag.dictionary
# my_bag.bag.each do |b|
#   p b
# end


################
# Timer Example
################
#
# def timer(minutes)
#   start_time = Time.now
#   minutes.downto(1) { |i| sleep 60 }
# end
#
# timer 1
#
# puts "Done!"


#############
# Split Tags
#############
#
# tags = "blog, material design, awesomeness "
#
# p tags.split(',').map(&:strip)


###################################################
# Select only records that hold a certain element
###################################################
#
# hash = [ {name: "Matt", description: "Awesome"}, {name: 'Matt', description: 'Still awesome'}, {name: "Bobby", description: "Meh"} ]
#
# hash.select { |k, v| k[:name] == 'Matt' }.each { |el| puts el[:description] }


########################
# Grab all tags in page
########################
#
# # Bad move with modifying String class
# # but this is just for fun
#
# require 'open-uri'
#
# page = open("http://en.wikipedia.org").read
#
# class String
#   def get_text(tag)
#     self.scan(/(<#{tag}.*?>)(.*?)(<\/#{tag}>)/i)
#   end
# end
#
# puts page.get_text("a")


###################
# Largest file
###################
#
# # NOTE: Use :mtime instead of size
# #       for the last modified file
#
# puts Dir.glob("#{File.dirname(__FILE__)}/*.*").max_by(&File.method(:size))


##########################
# Capture group in string
##########################
#
# url = "https://gist.githubusercontent.com/mattroyer/9399849/raw/33c673127c9282cef85c5766728429552007d8ed/watcher.rb"
# p url[/(.*?)\/9399849\/.*watcher.rb/, 1]


###############
# Speak Tweets
###############
#
# require 'twitter'
# require 'openssl'
#
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
#
# class RunYourMouth
#   def initialize(username)
#     client = Twitter::REST::Client.new do |config|
#       config.consumer_key        = "<CONSUMER_KEY>"
#       config.consumer_secret     = "<CONSUMER_SECRET>"
#       config.access_token        = "<ACCESS_TOKEN>"
#       config.access_token_secret = "<ACCESS_TOKEN_SECRET>"
#     end
#
#     client.user_timeline(username, exclude_replies: true, include_rts: false).each do |user|
#       puts user.text
#       speak user.text
#     end
#   end
#
#   # Got this from @ryancastro which is awesome
#   # because I didn't know you could do that
#   # https://gist.github.com/ryancastro/366fa4b8f649496cde59
#   #
#   def speak sentence
#     sentence = sentence.gsub /'/, "''"
#     `powershell.exe -c $speaker = new-object -com SAPI.SpVoice;  $speaker.Speak('#{sentence}');`
#   end
# end
#
# RunYourMouth.new "matthewroyer"


################################
# Words beginning with a string
################################
#
# def begins sentence, word_start
#  sentence.scan(/\b(#{word_start}.*?)\b/i).flatten
# end
#
# p begins "Put some sentence here. Like this. What the eff do you think you are doing?", 'thi'


###############################
# Words beginning with a vowel
###############################
#
# def vowel sentence
#   sentence.split.select { |s| s[/^([aeiou].*?)/i] }
# end
#
# my_sentence = "Put some sentence here. What the eff do you think you are doing?"
#
# p vowel my_sentence


#################
# Enumerable Fun
#################
#
# sentence = "What the eff are you doing?"
#
# sentence.split.each_slice(2) { |word| p word }
# puts
# sentence.split.each_cons(2) { |word| p word }


##############
# Add numbers
##############
#
# puts (1..1000).reduce :+


#########################
# Push objects to arrays
#########################
#
# crap = []
#
# crap.push(
#   id: "something",
#   title: "something_else",
#   tags: ["whoa", "stuff", "junk"],
#   description: "My description of this is awesome!!!"
# )
#
# crap.push(
#   id: "something2",
#   title: "something_else2",
#   tags: ["whoa2", "stuff2", "junk2"],
#   description: "My description of this is awesome!!!2"
# )
#
# puts crap


#####################
# Get data from JSON
#####################
#
# require 'json'
#
# data = JSON.parse('{"stuff":{"this":"is awesome"},"oh":"no"}')
#
# data.keys.each do |key|
#   puts key
#   puts "-----------"
#   puts data[key]
#   puts
#   puts
# end


##########################
# String to Hash of pairs
##########################
#
# locations = 'Alabama, AL, Alaska, AK, Arizona, AZ, Arkansas, AR, California, CA, Colorado, CO, Connecticut, CT, Delaware, DE, Florida, FL, Georgia, GA, South Dakota, SD'
# puts Hash[locations.split(',').map(&:strip).each_slice(2).to_a]
# puts Hash[*locations.split(',').map(&:strip)]


###############
# Email Parser
###############
#
# post = """Hello there
#
# something_cool [at] cool dot org
#
# matthewroyer at awesome dot com
#
# And you can take that to the bank.
# """
#
# regex = /(.*?).\b(at)\b.(.*?).\b(dot)\b.(.*?)$/i
#
# arr = post.scan(regex).map { |entry| entry.join(" ") }
#
# stuff = arr.map { |entry| entry.gsub(/\b(at)\b/, '@').gsub(/\b(dot)\b/, '.').delete(' ') }
#
# puts stuff


################
# Options
################
#
# class Person
#
#   def initialize(*options)
#     @options = options
#   end
#
#   def options
#     Hash[@options[0]]
#   end
# end
#
# p = Person.new(
#   height: "70",
#   weight: "210",
#   last: "Royer",
#   first: "Matthew"
# )
#
# puts p.options[:height]
# puts p.options[:weight]
# puts p.options[:first]


#####################
# Last 3 from array
#####################
#
# names = %w(matt bobby ryan dan kevin dave)
# puts names[-3..-1]


################
# File Splitter
################
#
# require 'fileutils'
#
# class SplitCodeSection
#
#   def initialize(filepath)
#     @filepath = File.read(filepath)
#     @filepath = @filepath.split(/\s*?\n\n\n\s*/)
#
#     get_names
#   end
#
#   def get_names
#
#     @filepath.each do |sections|
#
#       filename = sections.split(/\n/)[1][2..-1].split.map(&:downcase).join('-')
#
#       directory = FileUtils.mkdir_p("#{File.dirname(__FILE__)}/split_files")
#
#       File.open("#{directory[0]}/#{filename}.rb", "w") do |f|
#         sections.split(/\n/)[4..-1].each do |line|
#           if line[0] == "#"
#             f.puts line[2..-1]
#           else
#             f.puts line
#           end
#         end
#       end
#
#     end
#
#   end
#
# end
#
# SplitCodeSection.new "#{File.dirname(__FILE__)}/test.rb"
