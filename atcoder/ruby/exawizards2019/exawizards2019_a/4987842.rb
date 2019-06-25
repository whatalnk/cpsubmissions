# Contest ID: exawizards2019
# Problem ID: exawizards2019_a ( https://atcoder.jp/contests/exawizards2019/tasks/exawizards2019_a )
# Title: A. Regular Triangle
# Language: Ruby (2.3.3)
# Submitted: 2019-04-15 09:41:18 +0000 UTC ( https://atcoder.jp/contests/exawizards2019/submissions/4987842 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
if a == b && b == c
  puts "Yes"
else
  puts "No"
end
