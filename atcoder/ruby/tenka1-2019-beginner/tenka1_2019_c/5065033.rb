# Contest ID: tenka1-2019-beginner
# Problem ID: tenka1_2019_c ( https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_c )
# Title: C. Stones
# Language: Ruby (2.3.3)
# Submitted: 2019-04-20 14:32:02 +0000 UTC ( https://atcoder.jp/contests/tenka1-2019-beginner/submissions/5065033 ) 

n = gets.chomp.to_i
s = gets.chomp

b = 0
w = 0
n.times do |i|
  if s[i] == "#"
    b += 1
  else
    w += 1
  end
end

ans = w
left = 0
right = w
n.times do |i|
  if s[i] == "#"
    left += 1
  else
    right -= 1
  end
  ans = [ans, left + right].min
end
puts ans