# Contest ID: abc058
# Problem ID: abc058_b ( https://atcoder.jp/contests/abc058/tasks/abc058_b )
# Title: B. ∵∴∵
# Language: Ruby (2.3.3)
# Submitted: 2017-04-09 03:29:44 +0000 UTC ( https://atcoder.jp/contests/abc058/submissions/1212293 ) 

o = gets.chomp.split("")
e = gets.chomp.split("")

o.zip(e).each do |a, b|
  print(a, b)
end
puts