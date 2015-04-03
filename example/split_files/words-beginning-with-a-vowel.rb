def vowel sentence
  sentence.split.select { |s| s[/^([aeiou].*?)/i] }
end

my_sentence = "Put some sentence here. What the eff do you think you are doing?"

p vowel my_sentence
