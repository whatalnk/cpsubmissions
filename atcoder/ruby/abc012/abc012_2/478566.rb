# Contest ID: abc012
# Problem ID: abc012_2 ( https://atcoder.jp/contests/abc012/tasks/abc012_2 )
# Title: B. 入浴時間
# Language: Ruby (1.9.3)
# Submitted: 2015-08-28 10:23:04 +0000 UTC ( https://atcoder.jp/contests/abc012/submissions/478566 ) 

n = gets.chomp.to_i
h = n / 3600
n -= h * 3600
m = n / 60
n -= m * 60
printf("%02i:%02i:%02i\n", h, m, n)