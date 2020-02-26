require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(socks_count, socks)
  hash = Hash.new
  count = 0
  socks.each do |sock|
    if (hash.key?(sock)) 
      hash.delete(sock)
      count= count+1
    else
      hash.store(sock, true)
    end
  end

  return count
end

# fptr = File.open('./output.txt', 'w')

# n = gets.to_i

# ar = gets.rstrip.split(' ').map(&:to_i)

# result = sockMerchant n, ar

# fptr.write result
# fptr.write "\n"

# fptr.close()
