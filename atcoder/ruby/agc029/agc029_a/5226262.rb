# Contest ID: agc029
# Problem ID: agc029_a ( https://atcoder.jp/contests/agc029/tasks/agc029_a )
# Title: A. Irreversible operation
# Language: Ruby (2.3.3)
# Submitted: 2019-05-02 04:43:25 +0000 UTC ( https://atcoder.jp/contests/agc029/submissions/5226262 ) 

s = gets.chomp
n = s.length
a = Array.new()

n.times do |i|
  if s[i] == "B"
    a << i
  end
end
ans = 0

nn = a.length
nn.times do |i|
  ans += (n - (nn - i) - a[i])
end
puts ans