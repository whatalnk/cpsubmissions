# Contest ID: keyence2019
# Problem ID: keyence2019_a ( https://atcoder.jp/contests/keyence2019/tasks/keyence2019_a )
# Title: A. Beginning
# Language: Ruby (2.3.3)
# Submitted: 2019-01-17 02:15:33 +0000 UTC ( https://atcoder.jp/contests/keyence2019/submissions/4028835 ) 

a = gets.chomp.split(" ").map(&:to_i)
if a.include?(1) && a.include?(9) && a.include?(7) && a.include?(4) 
  puts "YES"
else
  puts "NO"
end
