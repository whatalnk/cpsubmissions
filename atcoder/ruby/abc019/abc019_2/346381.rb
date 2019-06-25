# Contest ID: abc019
# Problem ID: abc019_2 ( https://atcoder.jp/contests/abc019/tasks/abc019_2 )
# Title: B. 高橋くんと文字列圧縮
# Language: Ruby (1.9.3)
# Submitted: 2015-02-28 13:04:23 +0000 UTC ( https://atcoder.jp/contests/abc019/submissions/346381 ) 

s = gets.chomp.split("")
res = ""
n = 1
(0..(s.size - 1)).each do |i|
  c = s[i]
  if s[i] == s[i+1] then
    n += 1
  else
    res = res + c + n.to_s
    n = 1
  end
end
puts res
