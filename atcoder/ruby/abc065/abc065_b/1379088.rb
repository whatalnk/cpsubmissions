# Contest ID: abc065
# Problem ID: abc065_b ( https://atcoder.jp/contests/abc065/tasks/abc065_b )
# Title: B. Trained?
# Language: Ruby (2.3.3)
# Submitted: 2017-06-24 14:10:25 +0000 UTC ( https://atcoder.jp/contests/abc065/submissions/1379088 ) 

n = gets.chomp.to_i

a = [0]
n.times do
  a << gets.chomp.to_i
end

curr = 1
ans = 0
n.times do
  ans += 1
  nex = a[curr]
  if nex == 2 then
    puts ans
    exit
  elsif nex == 0 then
    break
  end
  a[curr] = 0
  curr = nex
end
puts -1