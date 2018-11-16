class Words

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    @vowels1 = @word1.scan(/[aeiou]/)
    @vowels2 = @word2.scan(/[aeiou]/)

    if @vowels1 == [] ||  @vowels2 == []
      "Please enter an actual word!"

    elsif @word1.length == @word2.length
      @word1_array = @word1.downcase.split("")
      @word2_array = @word2.downcase.split("")
        if @word1_array.sort == @word2_array.sort
          "These words are anagrams"
        else
          "These words are not anagrams"
        end

    end
  end
end
