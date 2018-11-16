require ('rspec')
require('pry')
require('anagram')

describe(".Words") do

  it ("Finds if two words contain the same letters")do
    words = Words.new("cinema", "iceman")
    expect(words.anagram()).to(eq("These words are anagrams."))
  end

  it ("Finds if two words do not contain the same letters")do
    words = Words.new("cinema", "silent")
    expect(words.anagram()).to(eq("These words are not anagrams."))
  end

  it ("Finds if two words with different cases have the same contents and length")do
    words = Words.new("cinema", "Iceman")
    expect(words.anagram()).to(eq("These words are anagrams."))
  end

  it ("Finds if an inputted word is a word, which means it contains vowels")do
    words = Words.new("trhg", "ruby")
    expect(words.anagram()).to(eq("Please enter an actual word!"))
  end

  it ("Finds if an inputted word is an antigram, meaning that none of the letters match.")do
    words = Words.new("stop", "ruby")
    expect(words.anagram()).to(eq("These words have no letter matches and are antigrams."))
  end

  it ("Finds if an inputted phrase is an anagram, antigram or is an actual word.")do
    words = Words.new("Halley's Comet", "Shall yet come")
    expect(words.anagram()).to(eq("These words are anagrams."))
  end

  it ("Finds if an inputted phrase is an palindrome.")do
    words = Words.new("kayak", "ruby")
    expect(words.palindrome()).to(eq("You entered a palindrome!"))
  end
end
