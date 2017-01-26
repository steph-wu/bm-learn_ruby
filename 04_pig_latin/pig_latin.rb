def translate(string)
  result = []
  arr = string.split(/\W+/)
  arr.each do |word|
    if word.match(/^[aeiou]/)
      word = "#{word}ay"
      result.push(word)
    else
      i = 0
      while i <= word.length && word.match(/^[bcdfghj-np-tuvwxz]/)
        word_arr = word.split('')
        letter = word_arr.shift
        word_arr.push(letter)
        word = word_arr.join('')
        i += 1
      end
      word = "#{word}ay"
      result.push(word)
    end
  end
  result.join(" ")
end
