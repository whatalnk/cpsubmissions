# Contest ID: abc098
# Problem ID: arc098_a ( https://atcoder.jp/contests/abc098/tasks/arc098_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-05-27 03:49:17 +0000 UTC ( https://atcoder.jp/contests/abc098/submissions/2573802 ) 

n = gets.chomp.to_i
x = gets.chomp

left = 0
right = x.count("E")
ans = n

n.times do |i|
  s = 0
  curr = x[i]
  if curr == "W"
    s = left + right
    left += 1
  else
    right -= 1
    s = left + right
  end
  ans = s if s < ans
end
puts ans