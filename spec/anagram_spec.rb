require ('rspec')
require('pry')
require('anagram')

describe(".Words") do
  it("Finds if two words have the same length")do
    words = Words.new("ruby", "bury")
    expect(words.anagram()).to(eq("These words are anagrams"))
  end

  it ("Finds if two words contain the same letters")do
    words = Words.new("cinema", "iceman")
    expect(words.anagram()).to(eq("These words are anagrams"))
  end

  it ("Finds if two words do not contain the same letters")do
    words = Words.new("cinema", "silent")
    expect(words.anagram()).to(eq("These words are not anagrams"))
  end

  it ("Finds if two words with different cases have the same contents and length")do
    words = Words.new("cinema", "Iceman")
    expect(words.anagram()).to(eq("These words are anagrams"))
  end

  it ("Finds if an inputted word is a word, which means it contains vowels")do
    words = Words.new("trhg", "ruby")
    expect(words.anagram()).to(eq("Please enter an actual word!"))
  end

  it ("Finds if an inputted word is an antigram, meaning that none of the letters match.")do
    words = Words.new("trhg", "ruby")
    expect(words.anagram()).to(eq("Please enter an actual word!"))
  end

end
