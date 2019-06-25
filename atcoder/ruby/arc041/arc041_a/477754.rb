# Contest ID: arc041
# Problem ID: arc041_a ( https://atcoder.jp/contests/arc041/tasks/arc041_a )
# Title: A. コインの反転
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-26 10:19:13 +0000 UTC ( https://atcoder.jp/contests/arc041/submissions/477754 ) 

x, y = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i
if k <= y then
  puts x + k
elsif k > y then
  puts x - k + 2 * y
end
