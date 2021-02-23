def solution(str)
  if str.length.odd?
    str = str + '_'
  end

  two_slice_array = str.split('').each_slice(2).to_a

  two_slice_array.map do |two_slice|
    "#{two_slice[0]}#{two_slice[1]}"
  end
end
