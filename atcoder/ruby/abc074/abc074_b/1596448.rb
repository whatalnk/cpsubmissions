# Contest ID: abc074
# Problem ID: abc074_b ( https://atcoder.jp/contests/abc074/tasks/abc074_b )
# Title: B. Collecting Balls (Easy Version)
# Language: Ruby (2.3.3)
# Submitted: 2017-09-16 12:10:56 +0000 UTC ( https://atcoder.jp/contests/abc074/submissions/1596448 ) 

n = gets.chomp.to_i
k = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i)
ans = 0
x.each do |i|
  ans += [i, k - i].min
end
puts ans * 2