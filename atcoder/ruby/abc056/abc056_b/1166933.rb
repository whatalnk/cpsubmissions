# Contest ID: abc056
# Problem ID: abc056_b ( https://atcoder.jp/contests/abc056/tasks/abc056_b )
# Title: B. NarrowRectanglesEasy
# Language: Ruby (2.3.3)
# Submitted: 2017-03-18 12:07:13 +0000 UTC ( https://atcoder.jp/contests/abc056/submissions/1166933 ) 

w, a, b = gets.chomp.split(" ").map(&:to_i)
if b + w < a then
  ret = a - (b + w)
elsif a + w < b then
  ret = b - (a + w)
else
  ret = 0
end
puts ret
