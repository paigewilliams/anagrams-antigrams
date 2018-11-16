require ('rspec')
require('pry')
require('dictionaries')
require('anagram')

describe(".Words") do

  it ("Finds whether two words contain the same letters.")do
    words = Words.new("cinema", "iceman")
    expect(words.real_word()).to(eq("These words are anagrams."))
  end

  it ("Finds whether two words do not contain the same letters.")do
    words = Words.new("cinema", "silent")
    expect(words.real_word()).to(eq("These words are not anagrams."))
  end

  it ("Finds whether two words with different cases have the same contents and length.")do
    words = Words.new("cinema", "Iceman")
    expect(words.real_word()).to(eq("These words are anagrams."))
  end

  it ("Finds whether an inputted word is a word, which means it contains vowels.")do
    words = Words.new("trhg", "ruby")
    expect(words.real_word()).to(eq("Please enter an actual word!"))
  end

  it ("Finds whether an inputted word is an antigram, meaning that none of the letters match.")do
    words = Words.new("stop", "human")
    expect(words.real_word()).to(eq("These words have no letter matches and are antigrams."))
  end

  it ("Finds whether an inputted phrase is an anagram, antigram or is an actual word.")do
    words = Words.new("Halley's Comet", "Shall yet come")
    expect(words.real_word()).to(eq("These words are anagrams."))
  end

  it ("Finds whether an inputted phrase is an palindrome.")do
    words = Words.new("kayak", "ruby")
    expect(words.palindrome()).to(eq("You entered a palindrome!"))
  end
end
