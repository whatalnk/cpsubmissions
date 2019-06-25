# Contest ID: abc006
# Problem ID: abc006_3 ( https://atcoder.jp/contests/abc006/tasks/abc006_3 )
# Title: C. スフィンクスのなぞなぞ
# Language: Ruby (1.9.3)
# Submitted: 2015-09-04 06:11:59 +0000 UTC ( https://atcoder.jp/contests/abc006/submissions/485169 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
a = 0 # 2
b = 0 # 3
c = 0 # 4
(0..n).each do |a|
  b = 4 * (n - a) - (m - 2 * a)
  c = (m - 2 * a) - 3 * (n - a)
  if a >= 0 && b >= 0 && c >= 0 && a + b + c == n then
    puts [a, b, c].join(" ")
    break
  end
  puts [-1, -1, -1].join(" ") if a == n
end
