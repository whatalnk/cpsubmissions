# Contest ID: abc038
# Problem ID: abc038_c ( https://atcoder.jp/contests/abc038/tasks/abc038_c )
# Title: C. 単調増加
# Language: Ruby (2.3.3)
# Submitted: 2017-03-17 06:44:06 +0000 UTC ( https://atcoder.jp/contests/abc038/submissions/1164652 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
inc = []
curr = 1
(n - 1).times do |i|
  if a[i + 1] - a[i] > 0 then
    curr += 1
  else
    inc << curr
    curr = 1
  end
end
inc << curr
ret = n
inc.each do |i|
  ret += (1 + i - 1) * (i - 1)/ 2
end
puts ret