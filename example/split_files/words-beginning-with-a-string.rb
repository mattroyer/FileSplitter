def begins sentence, word_start
 sentence.scan(/\b(#{word_start}.*?)\b/i).flatten
end

p begins "Put some sentence here. Like this. What the eff do you think you are doing?", 'thi'
