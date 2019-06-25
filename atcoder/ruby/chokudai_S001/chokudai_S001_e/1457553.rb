# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_e ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_e )
# Title: E. 1は何番目？
# Language: Ruby (2.3.3)
# Submitted: 2017-07-28 12:13:27 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1457553 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
puts arr.index(1) + 1