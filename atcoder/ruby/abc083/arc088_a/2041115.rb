# Contest ID: abc083
# Problem ID: arc088_a ( https://atcoder.jp/contests/abc083/tasks/arc088_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-01-30 12:11:59 +0000 UTC ( https://atcoder.jp/contests/abc083/submissions/2041115 ) 

x, y = gets.chomp.split(" ").map(&:to_i)
ans = 1
while true
  if x * 2 <= y then
    ans += 1
    x *= 2
  else
    break
  end
end
puts ans
