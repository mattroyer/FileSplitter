require 'twitter'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class RunYourMouth
  def initialize(username)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "<CONSUMER_KEY>"
      config.consumer_secret     = "<CONSUMER_SECRET>"
      config.access_token        = "<ACCESS_TOKEN>"
      config.access_token_secret = "<ACCESS_TOKEN_SECRET>"
    end

    client.user_timeline(username, exclude_replies: true, include_rts: false).each do |user|
      puts user.text
      speak user.text
    end
  end

  # Got this from @ryancastro which is awesome
  # because I didn't know you could do that
  # https://gist.github.com/ryancastro/366fa4b8f649496cde59
  #
  def speak sentence
    sentence = sentence.gsub /'/, "''"
    `powershell.exe -c $speaker = new-object -com SAPI.SpVoice;  $speaker.Speak('#{sentence}');`
  end
end

RunYourMouth.new "matthewroyer"
