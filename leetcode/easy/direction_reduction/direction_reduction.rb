require 'pry'
def direction_reduction(directions)
  reduced_directions = []
  directions.each do |direction|
    if oposite_direction?(reduced_directions.last, direction)
      reduced_directions.pop
    else
      reduced_directions.push(direction)
    end
  end
  reduced_directions
end

def oposite_direction?(direction1, direction2)
  d = [direction1, direction2]
  (d.include?('NORTH') && d.include?('SOUTH')) || (d.include?('EAST') && d.include?('WEST'))
end

