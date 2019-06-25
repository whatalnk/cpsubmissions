# Contest ID: abc121
# Problem ID: abc121_b ( https://atcoder.jp/contests/abc121/tasks/abc121_b )
# Title: B. Can you solve this?
# Language: Ruby (2.3.3)
# Submitted: 2019-03-09 12:07:52 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/4517224 ) 

N, M, C = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)

ans = 0
N.times do 
  a = gets.chomp.split(" ").map(&:to_i)
  x = C
  M.times do |i|
    x += a[i] * B[i]
  end
  if x > 0
    ans += 1
  end
end

puts ans