# Contest ID: abc119
# Problem ID: abc119_b ( https://atcoder.jp/contests/abc119/tasks/abc119_b )
# Title: B. Digital Gifts
# Language: Ruby (2.3.3)
# Submitted: 2019-02-24 12:08:22 +0000 UTC ( https://atcoder.jp/contests/abc119/submissions/4369331 ) 

n = gets.chomp.to_i
ans = 0
n.times do
  x, u = gets.chomp.split(" ")
  if u == 'JPY'
    ans += x.to_f
  else
    ans += x.to_f * 380000
  end
end
puts ans