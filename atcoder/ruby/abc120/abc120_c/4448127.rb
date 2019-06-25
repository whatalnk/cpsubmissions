# Contest ID: abc120
# Problem ID: abc120_c ( https://atcoder.jp/contests/abc120/tasks/abc120_c )
# Title: C. Unification
# Language: Ruby (2.3.3)
# Submitted: 2019-03-03 12:13:45 +0000 UTC ( https://atcoder.jp/contests/abc120/submissions/4448127 ) 

s = gets.chomp.split("").map(&:to_i)

a = 0
b = 0

s.each do |i|
  if i == 0
    a += 1
  else
    b += 1
  end
end

puts [a, b].min * 2