# Contest ID: abc003
# Problem ID: abc003_3 ( https://atcoder.jp/contests/abc003/tasks/abc003_3 )
# Title: C. AtCoderプログラミング講座
# Language: Ruby (1.9.3)
# Submitted: 2015-09-02 15:25:04 +0000 UTC ( https://atcoder.jp/contests/abc003/submissions/484397 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
rr = gets.chomp.split(" ").map(&:to_i).sort
a = 0
rr.last(k).each do |i|
  a = (a + i)/2.0
end
puts a