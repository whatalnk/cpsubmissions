# Contest ID: caddi2018b
# Problem ID: caddi2018b_b ( https://atcoder.jp/contests/caddi2018b/tasks/caddi2018b_b )
# Title: B. AtCoder Alloy
# Language: Ruby (2.3.3)
# Submitted: 2019-01-19 09:32:42 +0000 UTC ( https://atcoder.jp/contests/caddi2018b/submissions/4044549 ) 

n, h, w = gets.chomp.split(" ").map(&:to_i)

ans = 0

n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  if a >= h && b >= w
    ans += 1
  end
end
puts ans