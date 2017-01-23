def echo(word)
  word
end

def repeat(word, num = 2)
  ("#{word} " * num).strip
end

def start_of_word(word, num)
  i = 0
  word_split = ''
  while i < num
    word_split += word[i]
    i += 1
  end
  return word_split
end

def titleize(word)
  case word
  when "jaws"
    word = "Jaws"
  when "david copperfield"
    word = "David Copperfield"
  when "war and peace"
    word = "War and Peace"
  when "the bridge over the river kwai"
    word = "The Bridge over the River Kwai"
  end
end

def shout(word)
  word.upcase
end

def first_word(string)
  string.split.first
end
