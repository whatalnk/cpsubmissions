# Contest ID: arc035
# Problem ID: arc035_a ( https://atcoder.jp/contests/arc035/tasks/arc035_a )
# Title: A. 高橋くんと回文
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-26 11:59:19 +0000 UTC ( https://atcoder.jp/contests/arc035/submissions/477788 ) 

s1 = gets.chomp.split("")
s2 = s1.reverse
res = true
s1.zip(s2) do |a|
  unless a[0] == a[1] or a[0] == "*" or a[1] == "*" then
    res = false
    break
  end
end
if res then
  puts "YES"
else
  puts "NO"
end
