# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_b ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_b )
# Title: B. 和
# Language: Ruby (2.3.3)
# Submitted: 2017-07-28 12:11:41 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1457189 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
puts arr.inject(:+)