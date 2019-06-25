# Contest ID: abc087
# Problem ID: arc090_a ( https://atcoder.jp/contests/abc087/tasks/arc090_a )
# Title: C. Candies
# Language: Ruby (2.3.3)
# Submitted: 2018-01-29 08:08:52 +0000 UTC ( https://atcoder.jp/contests/abc087/submissions/2038188 ) 

n = gets.chomp.to_i
a1 = gets.chomp.split(" ").map(&:to_i)
a2 = gets.chomp.split(" ").map(&:to_i)

ans = []

n.times do |i|
  s = 0
  a1[0..i].each{|x| s += x}
  a2[i..n].each{|x| s += x}
  ans << s
end

puts ans.max