# Contest ID: abc092
# Problem ID: abc092_b ( https://atcoder.jp/contests/abc092/tasks/abc092_b )
# Title: B. Chocolate
# Language: Ruby (2.3.3)
# Submitted: 2018-03-25 12:05:48 +0000 UTC ( https://atcoder.jp/contests/abc092/submissions/2255849 ) 

n = gets.chomp.to_i
d, x = gets.chomp.split(" ").map(&:to_i)
n.times do
  a = gets.chomp.to_i
  day = 1
  i = 1
  while true
    break if day > d
    x += 1
    day = i * a + 1
    i += 1
  end
end
puts x
