class Words

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    if @word1.length == @word2.length
      @word1.split("")
      @word2.split("")
      true
    end
  end
end
