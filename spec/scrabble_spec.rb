require("scrabble")
require("rspec")

describe("String#scrabble") do
#  it("Returns a scrabble score for a letter") do
  #  expect("A".scrabble()).to(eq(1))
  #end
#  it("capitalizes and separates a word into letters in an array") do
#    expect("travis".scrabble()).to(eq(["T","R","A","V","I","S"]))
#  end
  it("fetches number values to letters and adds them up") do
    expect("travis".scrabble()).to(eq(9))
end
end
