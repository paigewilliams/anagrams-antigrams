class Words

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    @vowels1 = @word1.scan(/[aeiou]/)
    @vowels2 = @word2.scan(/[aeiou]/)
    @word1_clean = @word1.downcase.gsub(/[^a-z]/i, '')
    @word2_clean = @word2.downcase.gsub(/[^a-z]/i, '')

    if @vowels1 == [] ||  @vowels2 == []
      "Please enter an actual word!"

    elsif @word1_clean.length == @word2_clean.length
      @word1_array = @word1_clean.split("")
      @word2_array = @word2_clean.split("")
        if @word1_array.any? {|x| @word2_array.include?(x)}
          if @word1_array.sort == @word2_array.sort
          "These words are anagrams."
          else
          "These words are not anagrams."
          end
        else
          "These words have no letter matches and are antigrams."
        end
    end
  end
end
