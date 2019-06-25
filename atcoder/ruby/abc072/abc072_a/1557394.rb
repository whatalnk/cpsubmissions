# Contest ID: abc072
# Problem ID: abc072_a ( https://atcoder.jp/contests/abc072/tasks/abc072_a )
# Title: A. Sandglass2
# Language: Ruby (2.3.3)
# Submitted: 2017-09-02 12:02:31 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/1557394 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
puts [0, a - b].max
