# Contest ID: abc041
# Problem ID: abc041_d ( https://atcoder.jp/contests/abc041/tasks/abc041_d )
# Title: D. 徒競走
# Language: Ruby (2.3.3)
# Submitted: 2016-07-03 00:25:30 +0000 UTC ( https://atcoder.jp/contests/abc041/submissions/791292 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
x = []
y = []
m.times do
  line = gets.chomp.split(" ").map(&:to_i)
  x << line[0] - 1
  y << line[1] - 1
end

valid = []
dp = Array.new(1<<16, 0)
nn = (1<<n)

def contain(mask, pos)
  return !(mask & (1<<pos)).zero?
end

nn.times do |mask|
  valid[mask] = true
  m.times do |i|
    if contain(mask, y[i]) && !contain(mask, x[i]) then
      valid[mask] = false
      break
    end
  end
end

dp[0] = 1
nn.times do |mask|
  if valid[mask] then
    n.times do |i|
      if contain(mask, i) && valid[mask^(1<<i)] then
          dp[mask] += dp[mask^(1<<i)]
      end
    end
  end
end

puts dp[nn - 1]
