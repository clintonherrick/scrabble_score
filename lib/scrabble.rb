class String
  define_method(:scrabble) do
    letter_hash = Hash.new()
    ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"].each do |num|
      letter_hash.store(num, 1)
    end

    ["D", "G"].each do |num|
      letter_hash.store(num, 2)
    end

    ["B", "C", "M", "P"].each do |num|
      letter_hash.store(num, 3)
    end

    ["F", "H", "V", "W", "Y"].each do |num|
      letter_hash.store(num, 4)
    end

    ["K"].each do |num|
      letter_hash.store(num, 5)
    end

    ["J", "X"].each do |num|
      letter_hash.store(num, 6)
    end

    ["Q", "Z"].each do |num|
      letter_hash.store(num, 7)
    end
    name = self.upcase!().split("")
    total = 0
    name.each do |letter|
       total += letter_hash.fetch(letter)
    end
    total
  end
end
