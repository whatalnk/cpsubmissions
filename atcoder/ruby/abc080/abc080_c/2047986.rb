# Contest ID: abc080
# Problem ID: abc080_c ( https://atcoder.jp/contests/abc080/tasks/abc080_c )
# Title: C. Shopping Street
# Language: Ruby (2.3.3)
# Submitted: 2018-02-02 12:10:13 +0000 UTC ( https://atcoder.jp/contests/abc080/submissions/2047986 ) 

# ABC080
# C. Shopping Street

n = gets.chomp.to_i

f_ = []
n.times do 
  f_ << gets.chomp.split(" ").map(&:to_i)
end

p_ = []
n.times do 
  p_ << gets.chomp.split(" ").map(&:to_i)
end

res = -(1 << 30)
1.upto((1<<10) - 1) do |b|
  prft = 0
  n.times do |i|
    # Store
    c = 0
    10.times do |j|
      # Time
      if (((b >> j) & 1) & f_[i][j]) == 1 then
        c += 1
      end
    end
    prft += p_[i][c]
  end
  res = prft if prft > res
end

puts res