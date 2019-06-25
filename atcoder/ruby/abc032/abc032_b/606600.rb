# Contest ID: abc032
# Problem ID: abc032_b ( https://atcoder.jp/contests/abc032/tasks/abc032_b )
# Title: B. 高橋君とパスワード
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-09 12:20:37 +0000 UTC ( https://atcoder.jp/contests/abc032/submissions/606600 ) 

s = gets.chomp
k = gets.chomp.to_i

ks = []
n = s.length
if k > n then
  puts 0
else
  (0..(n - k)).each do |i|
    ks << s[i, k]
  end
  puts ks.uniq.length
end
