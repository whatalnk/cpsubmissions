# Contest ID: arc027
# Problem ID: arc027_1 ( https://atcoder.jp/contests/arc027/tasks/arc027_1 )
# Title: A. 門限
# Language: Ruby (1.9.3)
# Submitted: 2015-08-25 10:00:11 +0000 UTC ( https://atcoder.jp/contests/arc027/submissions/477258 ) 

h, m = gets.chomp.split(" ").map(&:to_i)

puts 18 * 60 - (h * 60 + m)