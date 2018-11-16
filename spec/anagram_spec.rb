require ('rspec')
require('pry')
require('anagram')

describe(".Words") do
  it("Finds if two words have the same length")do
    words = Words.new("ruby", "bury")
    expect(words.anagram()).to(eq(true))
  end
end
