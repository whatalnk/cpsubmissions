# Contest ID: exawizards2019
# Problem ID: exawizards2019_b ( https://atcoder.jp/contests/exawizards2019/tasks/exawizards2019_b )
# Title: B. Red or Blue
# Language: Ruby (2.3.3)
# Submitted: 2019-04-17 11:09:32 +0000 UTC ( https://atcoder.jp/contests/exawizards2019/submissions/5008103 ) 

n = gets.chomp.to_i
s = gets.chomp
r = 0
b = 0
n.times do |i|
  if s[i] == "R"
    r += 1
  else
    b += 1
  end
end
if r > b
  puts "Yes"
else
  puts "No"
end