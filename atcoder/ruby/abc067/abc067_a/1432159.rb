# Contest ID: abc067
# Problem ID: abc067_a ( https://atcoder.jp/contests/abc067/tasks/abc067_a )
# Title: A. Sharing Cookies
# Language: Ruby (2.3.3)
# Submitted: 2017-07-15 21:51:03 +0000 UTC ( https://atcoder.jp/contests/abc067/submissions/1432159 ) 

a, b = gets.chomp.split(" ").map(&:to_i)

if a % 3 == 0 || b % 3 == 0 || (a + b) % 3 == 0 then
  puts "Possible"
else
  puts "Impossible"
end
