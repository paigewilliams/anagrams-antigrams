class Words

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    if @word1.length === @word2.length
      @word1_array = @word1.split("")
      @word2_array = @word2.split("")
      # @test_array = []

      # @word1_array.each do |letter|
      #   binding.pry
      #   if @word2_array.include?([letter])
      #     @test_array.push(letter)
      #     end
      # end
      #
      # if @test_array === @word1_array
      #   "These words are anagrams"
      # else
      #   "These words are not anagrams"
      # end

    if @word1_array.sort == @word2_array.sort
      "These words are anagrams"
    else
      "These words are not anagrams"  
    end

    end

  end
end
