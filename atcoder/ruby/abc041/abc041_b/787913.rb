# Contest ID: abc041
# Problem ID: abc041_b ( https://atcoder.jp/contests/abc041/tasks/abc041_b )
# Title: B. 直方体
# Language: Ruby (2.3.3)
# Submitted: 2016-07-02 12:08:45 +0000 UTC ( https://atcoder.jp/contests/abc041/submissions/787913 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
f = 10**9 + 7
puts a * b * c % f
