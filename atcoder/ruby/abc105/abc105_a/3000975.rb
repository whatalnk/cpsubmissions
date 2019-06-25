# Contest ID: abc105
# Problem ID: abc105_a ( https://atcoder.jp/contests/abc105/tasks/abc105_a )
# Title: A. AtCoder Crackers
# Language: Ruby (2.3.3)
# Submitted: 2018-08-13 02:44:56 +0000 UTC ( https://atcoder.jp/contests/abc105/submissions/3000975 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
if n % k == 0
  puts 0
else
  puts 1
end
