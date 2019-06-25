# Contest ID: arc031
# Problem ID: arc031_1 ( https://atcoder.jp/contests/arc031/tasks/arc031_1 )
# Title: A. 名前
# Language: Ruby (1.9.3)
# Submitted: 2014-12-13 12:04:09 +0000 UTC ( https://atcoder.jp/contests/arc031/submissions/297939 ) 

n1 = gets.chomp
n2 = n1.reverse
if n1 == n2 then
  puts 'YES'
else
  puts 'NO'
end