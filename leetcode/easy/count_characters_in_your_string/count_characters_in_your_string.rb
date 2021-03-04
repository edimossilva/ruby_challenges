require 'pry'
def count_characters_in_your_string(string)
  hash = {}
  string.split('').each do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  hash
end
