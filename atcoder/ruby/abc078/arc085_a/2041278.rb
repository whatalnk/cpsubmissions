# Contest ID: abc078
# Problem ID: arc085_a ( https://atcoder.jp/contests/abc078/tasks/arc085_a )
# Title: C. HSI
# Language: Ruby (2.3.3)
# Submitted: 2018-01-30 12:56:18 +0000 UTC ( https://atcoder.jp/contests/abc078/submissions/2041278 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
puts (1900 * m + 100 * (n - m)) * 2**m
