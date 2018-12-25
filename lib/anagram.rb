class Anagram

  attr_accessor :word

  def initialize(anagram)
    @anagram = anagram
  end

  def match(word_array)
    word_array.find_all do |word|
      found = []
      found << word if word.split("").sort == @anagram.split("").sort
    end
    found
  end

end
