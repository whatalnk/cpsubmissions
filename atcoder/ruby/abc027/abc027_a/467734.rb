# Contest ID: abc027
# Problem ID: abc027_a ( https://atcoder.jp/contests/abc027/tasks/abc027_a )
# Title: A. 長方形
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-09 04:35:29 +0000 UTC ( https://atcoder.jp/contests/abc027/submissions/467734 ) 

l = gets.chomp.split(" ").map(&:to_i)
if l[0] == l[1]
  puts l[2]
elsif l[1] == l[2]
  puts l[0]
elsif l[2] == l[0]
  puts l[1]
end
