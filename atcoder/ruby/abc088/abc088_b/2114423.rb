# Contest ID: abc088
# Problem ID: abc088_b ( https://atcoder.jp/contests/abc088/tasks/abc088_b )
# Title: B. Card Game for Two
# Language: Ruby (2.3.3)
# Submitted: 2018-02-19 01:10:38 +0000 UTC ( https://atcoder.jp/contests/abc088/submissions/2114423 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort.reverse
ans = 0
n.times do |i|
  if (i + 1).odd? then
    ans += a[i]
  else
    ans -= a[i]
  end
end
puts ans