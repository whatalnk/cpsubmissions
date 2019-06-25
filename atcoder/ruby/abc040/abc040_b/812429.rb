# Contest ID: abc040
# Problem ID: abc040_b ( https://atcoder.jp/contests/abc040/tasks/abc040_b )
# Title: B. □□□□□
# Language: Ruby (2.3.3)
# Submitted: 2016-07-19 08:45:07 +0000 UTC ( https://atcoder.jp/contests/abc040/submissions/812429 ) 

n = gets.chomp.to_i

m = n / 2 + 1
res = n - 1
m.times do |i|
  h = i + 1
  w = n / (i + 1)
  rem = n - h * w
  if rem < 0 then
    next
  else
    res = [res, (h - w).abs + rem].min
  end
end
puts res
