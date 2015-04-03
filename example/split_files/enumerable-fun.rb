sentence = "What the eff are you doing?"

sentence.split.each_slice(2) { |word| p word }
puts
sentence.split.each_cons(2) { |word| p word }
