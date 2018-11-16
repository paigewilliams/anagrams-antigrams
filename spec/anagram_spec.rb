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

end
