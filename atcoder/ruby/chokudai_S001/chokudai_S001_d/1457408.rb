# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_d ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_d )
# Title: D. ソート
# Language: Ruby (2.3.3)
# Submitted: 2017-07-28 12:12:42 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1457408 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
puts arr.sort.join(" ")