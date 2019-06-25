# Contest ID: abc028
# Problem ID: abc028_d ( https://atcoder.jp/contests/abc028/tasks/abc028_d )
# Title: D. 乱数生成
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-29 13:13:45 +0000 UTC ( https://atcoder.jp/contests/abc028/submissions/481032 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
c1 = 3*2*(k-1)*(n-(k+1)+1)
c2 = 3*(n-1)
c3 = 1
puts (c1 + c2 + c3).to_f / n**3
