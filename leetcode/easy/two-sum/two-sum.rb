require 'pry'
def two_sum(nums, target)
  nums.each_with_index do |num_i, i|
    nums.drop(i+1).each_with_index do |num_j, j|
      if (num_i + num_j) == target
        return [i, i+j+1]
      end
    end
  end
end
