# Contest ID: abc049
# Problem ID: arc065_a ( https://atcoder.jp/contests/abc049/tasks/arc065_a )
# Title: C. 白昼夢 / Daydream
# Language: Ruby (2.3.3)
# Submitted: 2016-12-10 12:55:44 +0000 UTC ( https://atcoder.jp/contests/abc049/submissions/1019571 ) 

s = gets.chomp
s.gsub!("eraser", "")
s.gsub!("erase", "")
s.gsub!("dreamer", "")
s.gsub!("dream", "")

if s.empty? then
  puts "YES"
else
  puts "NO"
end
