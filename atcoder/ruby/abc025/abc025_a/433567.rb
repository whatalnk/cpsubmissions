# Contest ID: abc025
# Problem ID: abc025_a ( https://atcoder.jp/contests/abc025/tasks/abc025_a )
# Title: A. 25個の文字列
# Language: Ruby (2.1.5p273)
# Submitted: 2015-06-27 13:02:23 +0000 UTC ( https://atcoder.jp/contests/abc025/submissions/433567 ) 

s = gets.chomp.split("")
n = gets.chomp.to_i
res = []
for c in s
  res << s.map{|cc| c+cc}
end

puts res.flatten()[n-1]