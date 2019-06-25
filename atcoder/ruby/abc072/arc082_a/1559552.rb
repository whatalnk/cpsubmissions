# Contest ID: abc072
# Problem ID: arc082_a ( https://atcoder.jp/contests/abc072/tasks/arc082_a )
# Title: C. Together
# Language: Ruby (2.3.3)
# Submitted: 2017-09-02 12:13:18 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/1559552 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = Array.new(10**5+1, 0)
a.each do |i|
  b[i] += 1
end
ret = 0
b.each_cons(3) do |v1, v2, v3|
  ret = [ret, v1 + v2 + v3].max
end
puts ret