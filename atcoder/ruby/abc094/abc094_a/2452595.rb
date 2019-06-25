# Contest ID: abc094
# Problem ID: abc094_a ( https://atcoder.jp/contests/abc094/tasks/abc094_a )
# Title: A. Cats and Dogs
# Language: Ruby (2.3.3)
# Submitted: 2018-05-04 02:21:44 +0000 UTC ( https://atcoder.jp/contests/abc094/submissions/2452595 ) 

a, b, x = gets.chomp.split(" ").map(&:to_i)
ans = "NO"
if a == x
  ans = "YES"
elsif a < x
  if x - a <= b 
    ans = "YES"
  end
end
puts ans