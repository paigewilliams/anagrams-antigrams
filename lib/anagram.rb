class Words

  def initialize(word_1, word_2)
    @word_1 = word_1
    @word_2 = word_2
  end

  def real_word
    vowels_1 = @word_1.scan(/[aeiouy]/)
    vowels_2 = @word_2.scan(/[aeiouy]/)

    if vowels_1 == [] ||  vowels_2 == []
      "Please enter an actual word!"
    else
      anagram()
    end
  end

  def anagram
    word_1_clean = @word_1.downcase.gsub(/[^a-z]/i, '').split("")
    word_2_clean = @word_2.downcase.gsub(/[^a-z]/i, '').split("")

    if word_1_clean.any? {|letter| word_2_clean.include?(letter)}
      if word_1_clean.sort == word_2_clean.sort
      "'#{@word_1}' and '#{@word_2}' are anagrams."
      else
      palindrome()
      end
    else
      "'#{@word_1}' and '#{@word_2}' have no letter matches and are antigrams."
    end
  end

  def palindrome
    word_1_reverse = @word_1.reverse()
    word_2_reverse = @word_2.reverse()
    if word_1_reverse == @word_1 || word_2_reverse == @word_2
      "Your words are not anagrams, but you did enter a palindrome!"
    else
      "'#{@word_1}' and '#{@word_2}' are not anagrams."
    end
  end
end
