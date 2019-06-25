# Contest ID: abc104
# Problem ID: abc104_b ( https://atcoder.jp/contests/abc104/tasks/abc104_b )
# Title: B. AcCepted
# Language: Ruby (2.3.3)
# Submitted: 2018-08-08 11:11:05 +0000 UTC ( https://atcoder.jp/contests/abc104/submissions/2972029 ) 

s = gets.chomp

# 65 <= c <= 90: upper
# 97 <= c <= 122: lower

p1 = s[0] == "A"
p2 = s[2..(-2)].include?("C")
p3 = s.bytes.map{|c| c <= 90}.count(true) == 2

if p1 && p2 && p3 then
  puts "AC"
else
  puts "WA"
end
